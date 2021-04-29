import 'package:flutter/material.dart';
import 'package:virtuallearningapp/view/screens/utils/icons.dart';

class BottomNavBAr extends StatefulWidget {
  const BottomNavBAr({
    Key key,
    @required this.pages,
  }) : super(key: key);

  final List<Widget> pages;

  @override
  _BottomNavBArState createState() => _BottomNavBArState();
}

class _BottomNavBArState extends State<BottomNavBAr> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: widget.pages.elementAt(_selectedIndex),
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
          BottomNavigationBarItem(
            label: 'Profile',
            icon: ImageIcon(AssetImage(IconImages.profile)),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
