import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ride_share_app/core/global/widgets/button_with_fill.dart';
import 'package:ride_share_app/core/utils/assets_manager.dart';
import 'package:ride_share_app/core/utils/color_manager.dart';
import 'package:ride_share_app/core/utils/style_maneger.dart';

import '../../../HomePage/pages/home_page.dart';

class ThanksPage extends StatefulWidget {
  final String message;

  const ThanksPage({
    super.key,
    required this.message,
  });

  @override
  State<ThanksPage> createState() => _ThanksPageState();
}

class _ThanksPageState extends State<ThanksPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final List<Particle> _particles = [];
  final int particleCount = 100;
  final GlobalKey _starKey = GlobalKey();

  void _triggerExplosion(Offset position) {
    _particles.clear();

    for (int i = 0; i < particleCount; i++) {
      _particles.add(Particle(position: position));
    }
    _controller.reset();
    _controller.forward();
  }

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _controller.addListener(() {
      setState(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final RenderBox renderBox =
          _starKey.currentContext!.findRenderObject() as RenderBox;
      final size = renderBox.size;
      final center = Offset(size.width / 2, size.height / 2);

      _triggerExplosion(center);
    });
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.sizeOf(context).height;
    final double screenWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: ColorManager.whiteColor,
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(),
            Stack(
              alignment: Alignment.center,
              children: [
                CustomPaint(
                  painter: ParticleExplosionPainter(
                      particles: _particles, progress: _controller.value),
                ),
                Image.asset(
                  AssetsManager.thankStar,
                  key: _starKey,
                ).animate(
                  onComplete: (controller) {
                    controller.repeat();
                  },
                ).rotate(duration: 3.seconds, delay: .1.seconds),
                Center(
                  child: Icon(Icons.check_rounded,
                      color: ColorManager.green200,
                      size: screenWidth * 0.2 //80,
                      ),
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.05,
            ),
            Text(
              textAlign: TextAlign.center,
              "Thank you",
              //LocalizationKeys.thankYou.tr(),
              style: StyleManager.successText
            ),
            SizedBox(
              height: screenHeight * 0.01,
            ),
            Text(
              textAlign: TextAlign.center,
              widget.message,
              style: StyleManager.underSuccessText
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ButtonWithFill(
                buttonName: 'Back home',
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      PageTransition(
                          child: const HomePage(), type: PageTransitionType.fade),(rout)=>false);
                },
              ),
            ),
            SizedBox(
              height: screenHeight * 0.05,
            )
          ],
        ),
      ),
    );
  }
}

class Particle {
  final Offset position;
  final Offset velocity;
  final Color color;
  final double radius;
  Particle({required this.position})
      : velocity = Offset((Random().nextDouble() - 0.5) * 2,
                (Random().nextDouble() - 0.5) * 2) *
            500,
        color = Color.fromARGB(225, Random().nextInt(55), Random().nextInt(256),
            Random().nextInt(56)),
        radius = Random().nextDouble() * 5 + 2;
}

class ParticleExplosionPainter extends CustomPainter {
  final List<Particle> particles;
  final double progress;
  ParticleExplosionPainter({
    required this.particles,
    required this.progress,
  });
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();

    for (var particle in particles) {
      paint.color = particle.color.withOpacity(1.0 - progress);
      final currentposition = Offset(
          particle.position.dx + particle.velocity.dx * progress,
          particle.position.dy + particle.velocity.dy * progress);
      canvas.drawCircle(
          currentposition, particle.radius * (1 - progress), paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
