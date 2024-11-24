import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ride_share_app/core/injection_container.dart' as di;
import 'package:ride_share_app/core/global/widgets/back_app_bar.dart';
import 'package:ride_share_app/features/bicycle/presentation/bloc/bicycle_bloc.dart';
import 'package:ride_share_app/features/bicycle/presentation/widgets/bicycle_info_widget.dart';

class BicyclePage extends StatelessWidget {
  const BicyclePage({
    super.key,
    required this.bicycleId,
  });
  final int bicycleId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          di.sl<BicycleBloc>()..add((BicycleEvent.getBicycle(bicycleId))),
      child: Builder(
        builder: (context) {
          //context.read<BicycleBloc>().add((BicycleEvent.getBicycle(bicycleId)));
          return Scaffold(
            appBar: AppBar(
              leading: const BackAppBar (),
            ),
            body: BlocBuilder<BicycleBloc, BicycleState>(
              builder: (context, state) {
                return state.whenOrNull(
                      loaing: () {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                      bicycleLoaded: (bicycle) {
                        return BicycleInfoWidget(bicycle: bicycle);
                      },
                      error: (message) {
                        return Center(
                          child: Text(message),
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
        },
      ),
    );
  }
}
