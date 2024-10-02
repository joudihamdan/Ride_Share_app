import 'package:flutter/material.dart';

class NavigationHelper {
  
  static Future<T?> navigateTo<T>(BuildContext context, Widget page) {
    return Navigator.push<T>(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  static void goBack(BuildContext context) {
    Navigator.pop(context);
  }

  static Future<T?> navigateWithFade<T>(BuildContext context, Widget page) {
    return Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => page,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
      ),
    );
  }
}
