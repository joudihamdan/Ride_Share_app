import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ride_share_app/core/utils/assets_manager.dart';
import 'package:ride_share_app/features/Authentication/presentation/bloc/Login/Login_bloc.dart';
import 'package:ride_share_app/features/Authentication/presentation/pages/login/login_page.dart';
import '../../../core/injection_container.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<LoginBloc>(),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(80),
          bottomRight: Radius.circular(80),
        ),
        child: Drawer(
            width: MediaQuery.sizeOf(context).width * 0.6,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(AssetsManager.profile),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Nate Samson',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'nate@email.com',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 26),
                  ListTile(
                    leading: const Icon(Icons.history),
                    title: const Text('history'),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.assignment_late_outlined),
                    title: const Text('About as'),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.settings),
                    title: const Text('Setting'),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  BlocListener<LoginBloc, LoginState>(
                    listener: (context, state) {
                      state.maybeWhen(
                          successLogout: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()));
                          },
                          orElse: () {});
                    },
                    child: Builder(builder: (context) {
                      return ListTile(
                        leading: const Icon(Icons.logout_outlined),
                        title: const Text('Logout'),
                        onTap: () {
                          BlocProvider.of<LoginBloc>(context)
                              .add(LoginEvent.logout());

                        },
                      );
                    }),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
