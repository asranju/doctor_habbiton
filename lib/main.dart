import 'package:flutter/material.dart';
import 'package:habbiton_doctors_app/utils/app_route.dart';
import 'package:habbiton_doctors_app/utils/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appThemeConfig,
      routes: Routes.a,
      initialRoute: '/',
    );
  }
}