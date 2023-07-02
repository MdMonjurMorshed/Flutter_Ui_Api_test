import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:test_application/controllers/controller/bottombar_controller.dart';
import 'package:test_application/models/bottom_navbar_item.dart';
import 'package:test_application/themes/theme.dart';

class BottomBarPersistentView extends StatelessWidget {
  final List<PersistentTabItem> items;
  BottomBarPersistentView({super.key, required this.items});
  final bottomBarController = Get.find<BottomBarController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() => WillPopScope(
          onWillPop: () async {
            // first will check the current tab. if it can be popped
            if (items[bottomBarController.bottomCurrentIndex.value]
                    .navigatorkey
                    ?.currentState
                    ?.canPop() ??
                false) {
              items[bottomBarController.bottomCurrentIndex.value]
                  .navigatorkey
                  ?.currentState
                  ?.pop();
              return false;
            } else {
              // current tab has to navigation on stack
              return true;
            }
          },
          child: Scaffold(
            body: IndexedStack(
              index: bottomBarController.bottomCurrentIndex.value,
              children: items
                  .map((page) => Navigator(
                        key: page.navigatorkey,
                        onGenerateInitialRoutes: (navigator, initialRoute) {
                          //
                          return [
                            GetPageRoute(
                                page: () => page.tab,
                                transition: Transition.fadeIn,
                                transitionDuration: Duration(milliseconds: 500))
                          ];
                        },
                      ))
                  .toList(),
            ),
            bottomNavigationBar: BottomNavigationBar(
              iconSize: 30,
              selectedItemColor: Apptheme.appColor.bottomBarSelectedItem,
              type: BottomNavigationBarType.fixed,
              currentIndex: bottomBarController.bottomCurrentIndex.value,
              onTap: (index) {
                /// Check if the tab that the user is pressing is currently selected
                if (index == bottomBarController.bottomCurrentIndex.value) {
                  /// if you want to pop the current tab to its root then use
                  items[index]
                      .navigatorkey
                      ?.currentState
                      ?.popUntil((route) => route.isFirst);
                } else {
                  bottomBarController.bottomCurrentIndex.value = index;
                }
              },
              items: items
                  .map((item) => BottomNavigationBarItem(
                      icon: Icon(item.icon), label: item.title))
                  .toList(),
            ),
          ),
        ));
  }
}
