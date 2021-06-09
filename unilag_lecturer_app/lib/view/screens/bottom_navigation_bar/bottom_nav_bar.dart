import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unilag_lecturer_app/view/screens/bottom_navigation_bar/bottom_nav_bar_state.dart';
import 'package:unilag_lecturer_app/view/screens/utils/icons.dart';
import 'package:unilag_lecturer_app/view/theme/colors.dart';


class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
    @required this.pages,
  }) : super(key: key);

  final List<Widget> pages;

  @override
  Widget build(BuildContext context) {
    var state = context.watch<BottomNavBarState>();

    // if we are in tab classroom, remove bottomNavBar
    if (!state.isVisible) {
      return Scaffold(
        body: Center(
          child: pages.elementAt(state.selectedIndex),
        ),
      );
    }

    return Scaffold(
      body: Center(
        child: pages.elementAt(state.selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
