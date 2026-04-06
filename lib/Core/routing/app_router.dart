import 'package:doctor_app/Core/routing/routes.dart';
import 'package:doctor_app/Features/login/ui/login_screen.dart';
import 'package:doctor_app/Features/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (context) => const OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (context) => LoginScreen());
      default:
        return MaterialPageRoute(builder: (context) => const Scaffold(
          body: Center(child: Text('No route found')),
        ));
    }
  }
}