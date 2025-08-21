import 'package:client/const/color_extension.dart';
import 'package:client/views/home/home_view.dart';
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
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: SizedBox(
        width: 65,
        height: 65,
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
        elevation: 1,
        notchMargin: 8,
        shape: CircularNotchedRectangle(),
        child: Row(
          children: [
            InkWell(
              onTap: () {
                if (selectTab != 0) {
                  selectTab = 0;
                  selectPageView = Container();
                }
                if (mounted) {
                  setState(() {});
                }
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/tab_menu.png',
                    width: 15,
                    height: 15,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
