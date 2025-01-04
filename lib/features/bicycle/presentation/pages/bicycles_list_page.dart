import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:ride_share_app/core/injection_container.dart' as di;
import 'package:ride_share_app/core/utils/style_maneger.dart';
import 'package:ride_share_app/features/bicycle/presentation/bloc/bicycle_bloc.dart';
import 'package:ride_share_app/features/bicycle/presentation/widgets/bicycle_list_builder.dart';


class BicyclesListPage extends StatelessWidget {
  const BicyclesListPage({super.key, required this.name, required this.hubId});
    final String name;
    final int hubId;


  @override
  Widget build(BuildContext context) {
    print(name);
    return BlocProvider(
      create: (context) => di.sl<BicycleBloc>()..add((BicycleEvent.getHubContent(name,hubId))),
      child: Builder(builder: (context) {
       // context.read<BicycleBloc>().add((BicycleEvent.getBicyclesOfCategory(name)));
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  size: 14,
                  color: Color(0xff414141),
                )),
          ),
          body: BlocBuilder<BicycleBloc, BicycleState>(
            builder: (context, state) {
              return state.whenOrNull(
                      loaing: () {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                      bicyclesLoaded: (items) {
                        print("bicycles loaded.");
                        return ItemsBuilder(items: items);
                      },
                      error: (message) {
                        return Column(
                          children: [
                            SizedBox(
                              width: 400,
                              height: 400,
                              child:Lottie.asset("assets/images/bicycle.json",fit: BoxFit.contain) ,
                            ),
                            Text("Try again later",style: StyleManager.boldHeader,)
                          ],
                        );
                      },
                    ) ??
                    const Center(
                      child: Text(
                          'Something went wrong or no state change detected.'),
                    );
              },
          ),
        );
      }),
    );
  }
}
