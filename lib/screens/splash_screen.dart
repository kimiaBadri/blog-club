import 'package:blog_club/screens/home_page_screen.dart';
import 'package:blog_club/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then((value) => {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return OnBoardingScreen();
            },
          ))
        });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: FittedBox(
                fit: BoxFit.cover,
                child: Image.asset('assets/images/icons/DECORATION.png')),
          ),
          Center(
            child: Image.asset('assets/images/icons/1.png'),
          )
        ],
      ),
    );
  }
}
