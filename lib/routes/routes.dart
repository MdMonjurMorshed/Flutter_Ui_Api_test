import 'package:get/get.dart';

import '../views/bottom_bar_page/home_page.dart';
import '../views/landing_page.dart';
import '../views/welcome_page.dart';

class PageRoutes {
  static List<GetPage> pages = [
    GetPage(
      name: '/welcome',
      page: () => WelcomeScreen(),
      transition: Transition.fadeIn,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
        name: '/home',
        page: () => HomePage(),
        transition: Transition.fadeIn,
        transitionDuration: Duration(milliseconds: 500)),
    GetPage(name: '/maintain', page: () => MainPage()),
    GetPage(
        name: '/newpage',
        page: () => NewPage(),
        transition: Transition.fadeIn,
        transitionDuration: Duration(milliseconds: 500))
  ];
}
