import 'package:blog_club/constants/constants.dart';
import 'package:flutter/material.dart';

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
          Container(
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
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
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
          ),
          Container(
            margin: EdgeInsets.only(top: 386),
            width: 231,
            height: 72,
            decoration: BoxDecoration(
              color: blue,
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
          )
        ],
      ),
    );
  }
}
