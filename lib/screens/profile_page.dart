import 'package:blog_club/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:hexcolor/hexcolor.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            color: backgroundColor,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 90, right: 40, left: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Profile',
                  style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'AR',
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Image.asset('assets/images/icons/Overflow.png')
              ],
            ),
          ),
          AboutMeContainer(),
          Positioned(
              bottom: 400,
              left: 110,
              right: 110,
              child: Container(
                height: 32,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 24,
                      color: Colors.grey.withOpacity(0.9),
                    )
                  ],
                ),
              )),
          BlueContainer(),
          MyPostContainer()
        ],
      ),
    );
  }
}

class MyPostContainer extends StatelessWidget {
  const MyPostContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 530),
      height: 340,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 32),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 40, right: 40, bottom: 24),
                child: Row(
                  children: [
                    Text(
                      'My Posts',
                      style: TextStyle(
                          fontSize: 20, fontFamily: 'AB', color: darkBlueText2),
                    ),
                    Spacer(),
                    Image.asset('assets/images/icons/Grid.png'),
                    SizedBox(
                      width: 24,
                    ),
                    Image.asset('assets/images/icons/Table.png'),
                  ],
                ),
              ),
            ),
            SliverList.builder(
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      width: 295,
                      height: 141,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              offset: Offset(-2, 10),
                              spreadRadius: 0.5,
                              color: backgroundColor)
                        ],
                      ),
                      child: Row(
                        children: [
                          Image.asset('assets/images/posts/profile/Image.png'),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20, top: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    MyPostHeaderTexts.texts[
                                        index % MyPostHeaderTexts.texts.length],
                                    style: TextStyle(
                                        fontFamily: 'AR',
                                        color: blue,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    MyPostBodyTexts.texts[
                                        index % MyPostBodyTexts.texts.length],
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'AR',
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                  SizedBox(
                                    height: 22,
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                          'assets/images/icons/Thumbs.png'),
                                      SizedBox(
                                        width: 6,
                                      ),
                                      Text(
                                        '2.1k',
                                        style: TextStyle(
                                            color: darkBlueText, fontSize: 14),
                                      ),
                                      SizedBox(
                                        width: 16,
                                      ),
                                      Image.asset(
                                          'assets/images/icons/Time.png'),
                                      SizedBox(
                                        width: 6,
                                      ),
                                      Text(
                                        '1hr ago',
                                        style: TextStyle(
                                            color: darkBlueText, fontSize: 14),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Image.asset(
                                          'assets/images/icons/Bookmark.png'),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                );
              },
              itemCount: 2,
            )
          ],
        ),
      ),
    );
  }
}

class BlueContainer extends StatelessWidget {
  const BlueContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 386),
      width: 231,
      height: 72,
      decoration: BoxDecoration(
        color: blue,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                color: blue4,
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '52',
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'AR',
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'post',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'AR',
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '250',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'AR',
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'following',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'AR',
                      fontWeight: FontWeight.normal,
                      color: Colors.white),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '4.5k',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'AR',
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'followers',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'AR',
                      fontWeight: FontWeight.normal,
                      color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AboutMeContainer extends StatelessWidget {
  const AboutMeContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 140),
      width: 305,
      height: 294,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 32, top: 32, right: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 84,
                  height: 84,
                  decoration: BoxDecoration(
                    border: GradientBoxBorder(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          HexColor('#376AED'),
                          HexColor('#49B0E2'),
                          HexColor('#9CECFB'),
                        ],
                      ),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Image.asset(
                      'assets/images/posts/profile/placeholder.png'),
                ),
                SizedBox(
                  width: 24,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '@joviedan',
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'AR',
                          fontWeight: FontWeight.w500,
                          color: darkBlueText),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Jovi Daniel',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'AR',
                          fontWeight: FontWeight.bold,
                          color: darkBlueText2),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'UX Designer',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'AR',
                          fontWeight: FontWeight.w600,
                          color: blue),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              'About me',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'AR',
                  fontWeight: FontWeight.bold,
                  color: darkBlueText2),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Madison Blackstone is a director of user experience design, with experience managing global teams.',
              style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'AR',
                  fontWeight: FontWeight.normal,
                  color: darkBlueText2),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
