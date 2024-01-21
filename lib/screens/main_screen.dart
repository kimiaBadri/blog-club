import 'package:blog_club/screens/home_page_screen.dart';
import 'package:blog_club/screens/onboarding_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _setBottomNavigationItem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _setBottomNavigationItem,
          onTap: (int index) {
            setState(() {
              _setBottomNavigationItem = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.green,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Article'),
            BottomNavigationBarItem(icon: Icon(Icons.plus_one), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
          ],
        ),
        body: IndexedStack(
          index: _setBottomNavigationItem,
          children: getLayout(),
        ));
  }

  List<Widget> getLayout() {
    return <Widget>[
      HomePageScreen(),
      HomePageScreen(),
      OnBoardingScreen(),
      OnBoardingScreen(),
      OnBoardingScreen(),
    ];
  }
}
