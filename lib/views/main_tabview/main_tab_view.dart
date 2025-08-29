import 'package:client/common_widget/tab_button.dart';
import 'package:client/const/color_extension.dart';
import 'package:client/views/home/home_view.dart';
import 'package:client/views/menu/menu_view.dart';
import 'package:flutter/material.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView> {
  int selectTab = 2;
  PageStorageBucket storageBucket = PageStorageBucket();
  Widget selectPageView = HomeView();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AColor.white,
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      body: PageStorage(bucket: storageBucket, child: selectPageView),
      floatingActionButton: SizedBox(
        width: 60,
        height: 60,
        child: FloatingActionButton(
          onPressed: () {
            if (selectTab != 2) {
              selectTab = 2;
              selectPageView = HomeView();
            }
            if (mounted) {
              setState(() {});
            }
          },
          shape: CircleBorder(),
          backgroundColor: selectTab == 2 ? AColor.primary : AColor.placeholder,
          child: Image.asset(
            'assets/images/tab_home.png',
            height: 30,
            width: 30,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        surfaceTintColor: AColor.white,
        shadowColor: Colors.black12,
        elevation: 1,
        notchMargin: 13,
        height: 60,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TabButton(
              title: 'Menu',
              icon: 'assets/images/tab_menu.png',
              onTab: () {
                if (selectTab != 0) {
                  selectTab = 0;
                  selectPageView = MenuView();
                }
                if (mounted) {
                  setState(() {});
                }
              },

              isSelected: selectTab == 0,
            ),
            TabButton(
              title: 'Offer',
              icon: 'assets/images/tab_offer.png',
              onTab: () {
                if (selectTab != 1) {
                  selectTab = 1;
                  selectPageView = Container();
                }
                if (mounted) {
                  setState(() {});
                }
              },

              isSelected: selectTab == 1,
            ),
            SizedBox(width: 60.0, height: 60.0),
            TabButton(
              title: 'Profile',
              icon: 'assets/images/tab_profile.png',
              onTab: () {
                if (selectTab != 3) {
                  selectTab = 3;
                  selectPageView = Container();
                }
                if (mounted) {
                  setState(() {});
                }
              },

              isSelected: selectTab == 3,
            ),
            TabButton(
              title: 'More',
              icon: 'assets/images/tab_more.png',
              onTab: () {
                if (selectTab != 4) {
                  selectTab = 4;
                  selectPageView = Container();
                }
                if (mounted) {
                  setState(() {});
                }
              },

              isSelected: selectTab == 4,
            ),
          ],
        ),
      ),
    );
  }
}
