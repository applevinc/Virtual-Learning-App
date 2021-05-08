import 'package:flutter/material.dart';
import 'package:virtuallearningapp/view/screens/bottom_navigation_bar/bottom_nav_bar_state.dart';
import 'package:virtuallearningapp/view/screens/utils/icons.dart';
import 'package:virtuallearningapp/view/theme/colors.dart';
import 'package:provider/provider.dart';

class BottomNavBAr extends StatelessWidget {
  const BottomNavBAr({
    Key key,
    @required this.pages,
  }) : super(key: key);

  final List<Widget> pages;

  @override
  Widget build(BuildContext context) {
    var state = context.watch<BottomNavBarState>();

    return Scaffold(
      body: Center(
        child: pages.elementAt(state.selectedIndex),
      ),
      bottomNavigationBar: !state.isVisible
          ? Container()
          : BottomNavigationBar(
              showSelectedLabels: false,
              showUnselectedLabels: false,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  label: 'Dashboard',
                  icon: ImageIcon(AssetImage(IconImages.dashboard)),
                ),
                BottomNavigationBarItem(
                  label: 'Course',
                  icon: ImageIcon(AssetImage(IconImages.course)),
                ),
                BottomNavigationBarItem(
                  label: 'Profile',
                  icon: ImageIcon(AssetImage(IconImages.profile)),
                ),
              ],
              currentIndex: state.selectedIndex,
              selectedItemColor: AppColor.red,
              onTap: (index) {
                state.onItemTapped(index);
              },
            ),
    );
  }
}
