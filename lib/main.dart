import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:test_application/controllers/bindings/bindings.dart';
import 'package:test_application/routes/routes.dart';
import 'package:test_application/themes/theme.dart';
import 'package:test_application/views/landing_page.dart';
import 'package:test_application/views/bottom_bar_page/home_page.dart';
import 'package:test_application/views/splash_screen.dart';
import 'package:test_application/views/welcome_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Test application',
      theme: Apptheme.defines(),
      initialBinding: ProjectBindings(),
      getPages: PageRoutes.pages,
      home: SplashScreenPage(),
    );
  }
}
