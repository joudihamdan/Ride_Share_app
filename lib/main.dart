import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:ride_share_app/core/store/getit.dart';
import 'package:ride_share_app/core/utils/theme_manager.dart';
import 'package:ride_share_app/features/HomePage/pages/home_page.dart';
import 'package:ride_share_app/generated/l10n.dart';
import 'core/injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  // List<HubModel> hubs = await HubServiceImp().getAllHub(33.5, 36.35);
  initial();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: const Locale('en'),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appTheme,
      home:  HomePage(),
    );
  }
}
