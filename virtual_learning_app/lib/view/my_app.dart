import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:virtuallearningapp/view/Splashscreen.dart';
import 'package:virtuallearningapp/view/screens/bottom_navigation_bar/bottom_nav_bar_state.dart';
import 'package:virtuallearningapp/view/theme/custom_theme.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, screenType) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) => BottomNavBarState()),
          ],
          child: MaterialApp(
            title: 'Virtual Learning App',
            debugShowCheckedModeBanner: false,
            theme: CustomTheme.defaultTheme(),
            // first screen
            home: Splashscreen(),
          ),
        );
      },
    );
  }
}
