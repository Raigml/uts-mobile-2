// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_final_fields

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

import 'screens/list_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget started = SplashScreenView(
      navigateRoute: BottomMenu(),
      duration: 5000,
      imageSize: 250,
      imageSrc: "assets/img/logo.png",
      backgroundColor: Colors.yellow,
    );

    return MaterialApp(
      title: "Tugas Mobile Flutter",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: started,
    );
  }
}

class BottomMenu extends StatefulWidget {
  @override
  State<BottomMenu> createState() => _BottomMenuState();
}

class _BottomMenuState extends State<BottomMenu> {
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  final screens = [
    HomeScreen(),
    ListScreen(),
    ProfileScreen(),
  ];

  final textScreen = ["Home", "Daftar Artikel", "Profile"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 60.0,
        // ignore: prefer_const_literals_to_create_immutables
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.list, size: 30),
          // Icon(Icons.album_sharp, size: 30),
          // Icon(Icons.call_split, size: 30),
          Icon(Icons.perm_identity, size: 30),
        ],
        color: Colors.yellow.shade800,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.black,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        letIndexChange: (index) => true,
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text(textScreen[_page]),
        backgroundColor: Colors.yellow.shade800,
      ),
      body: screens[_page],
    );
  }
}
