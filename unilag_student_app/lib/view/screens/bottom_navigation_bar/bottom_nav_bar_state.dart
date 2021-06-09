import 'package:flutter/foundation.dart';

class BottomNavBarState extends ChangeNotifier {
  bool isVisible = true;
  void visible(bool value) {
    isVisible = value;
    notifyListeners();
  }

  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;

  void onItemTapped(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
}
