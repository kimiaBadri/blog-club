import 'package:blog_club/constants/constants.dart';
import 'package:blog_club/screens/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _pageController = PageController();
  final items = onBoardingItems;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 54, bottom: 8),
                child: Image.asset('assets/images/posts/large/IMAGETILES.png'),
              ),
            ),
            Container(
              padding:
                  EdgeInsets.only(left: 32, right: 32, top: 32, bottom: 32),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 20,
                    color: Colors.black.withOpacity(0.1),
                  ),
                ],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              height: 340,
              child: Column(
                children: [
                  Expanded(
                      child: PageView.builder(
                    controller: _pageController,
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            items[index].title,
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Text(
                            items[index].description,
                            style: Theme.of(context).textTheme.headline1,
                          ),
                        ],
                      );
                    },
                    itemCount: items.length,
                  )),
                  Container(
                    height: 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SmoothPageIndicator(
                          controller: _pageController,
                          count: items.length,
                          effect: ExpandingDotsEffect(
                              dotWidth: 8,
                              dotHeight: 8,
                              activeDotColor: blue,
                              dotColor: Colors.grey),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: ((context) {
                                  return LoginScreen();
                                }),
                              ),
                            );
                          },
                          child: Icon(CupertinoIcons.arrow_right),
                          style: ButtonStyle(
                            minimumSize:
                                MaterialStateProperty.all(Size(84, 60)),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
