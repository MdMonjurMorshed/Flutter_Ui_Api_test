import 'package:flutter/material.dart';
import 'package:test_application/views/bottom_bar_persisstent.dart';

import '../models/bottom_navbar_item.dart';
import 'bottom_bar_page/account_page.dart';
import 'bottom_bar_page/cart_page.dart';
import 'bottom_bar_page/favorite_page.dart';
import 'bottom_bar_page/home_page.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});
  final _homeKey = GlobalKey<NavigatorState>();
  final _cartKey = GlobalKey<NavigatorState>();
  final _favoriteKey = GlobalKey<NavigatorState>();
  final _accountKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return BottomBarPersistentView(items: [
      PersistentTabItem(
          tab: HomePage(),
          title: 'Home',
          icon: Icons.home_outlined,
          navigatorkey: _homeKey),
      PersistentTabItem(
          tab: CartPage(),
          title: 'Cart',
          icon: Icons.shopping_cart_outlined,
          navigatorkey: _cartKey),
      PersistentTabItem(
          tab: FavoritePage(),
          title: 'Favorite',
          icon: Icons.favorite_border_sharp,
          navigatorkey: _favoriteKey),
      PersistentTabItem(
          tab: AccountPage(),
          title: 'Me',
          icon: Icons.account_circle_outlined,
          navigatorkey: _accountKey),
    ]);
  }
}
