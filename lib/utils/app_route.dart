import 'package:flutter/cupertino.dart';
import 'package:habbiton_doctors_app/app_ui/app_auth/splash_screen.dart';
import 'package:habbiton_doctors_app/app_ui/home_pages/dashboard_screen.dart';

class Routes{

  static final Map<String, Widget Function(BuildContext)> a = {
    '/': (context) => const SplashScreen(),
    '/dashboard':(context)=> const DashBoardScreen(),

  };

}