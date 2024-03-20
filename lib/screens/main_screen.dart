import 'package:blog_club/screens/home_page_screen.dart';
import 'package:blog_club/screens/login_screen.dart';
import 'package:blog_club/screens/onboarding_screen.dart';
import 'package:blog_club/screens/profile_page.dart';
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
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/icons/online-learning 1.png'),
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/icons/Articles.png'),
                ),
                label: 'Article'),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/icons/Oval.png'),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/icons/Search.png'),
                ),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/icons/tasks 2.png'),
                ),
                label: 'Menu'),
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
      LoginScreen(),
      ProfileScreen(),
      OnBoardingScreen(),
      ProfileScreen(),
    ];
  }
}
