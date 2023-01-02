import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone/common/widgets/error.dart';

import 'features/auth/screens/login_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LoginScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: ErrorScreen(error: 'This pagee doesn\'t not exist'),
        ),
      );
  }
}
