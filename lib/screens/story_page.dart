import 'dart:ui';
import 'package:blog_club/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StoryPage extends StatelessWidget {
  const StoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            decoration: BoxDecoration(color: blue),
          ),
          _getImageContainer(),
          _getChangeStoryContainer(),
          _getStoryRow(),
          _getBlurContainer(),
          _getBottum(),
          Positioned(
            top: 770,
            right: 36,
            child: Column(
              children: [
                Icon(
                  CupertinoIcons.heart_fill,
                  color: Colors.red,
                  size: 40,
                ),
                Text(
                  '450K',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _getImageContainer() {
    return Container(
      width: double.infinity,
      height: 720,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        child: FittedBox(
          fit: BoxFit.fill,
          child: Image.asset(
              'assets/images/stories/karl-magnuson-85J99sGggnw-unsplash.jpg'),
        ),
      ),
    );
  }

  Widget _getBottum() {
    return Positioned(
      top: 755,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/icons/Angle-Up.png'),
          SizedBox(
            height: 4,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                minimumSize: Size(130, 45),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                backgroundColor: Colors.white),
            onPressed: () {},
            child: Center(
              child: Text(
                'Read More',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'AR',
                  fontWeight: FontWeight.bold,
                  color: blue,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _getBlurContainer() {
    return Positioned(
      top: 500,
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 14,
            sigmaY: 14,
          ),
          child: Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 32, right: 32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Do You Want To Live A Happy Life? Smile.',
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'AR',
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                      'Sometimes there’s no reason to smile, but I’ll smile anyway because of life. Yes, I’m one of those people who always smiles.',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'AR',
                          fontWeight: FontWeight.w200,
                          color: Colors.white60)),
                ],
              ),
            ),
            width: 310,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(255, 255, 255, 0.1),
                  Color.fromRGBO(255, 255, 255, 0.1)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _getStoryBox() {
    return Container(
      width: 58,
      height: 58,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(24),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        child: Image.asset('assets/images/stories/story_4.jpg'),
      ),
    );
  }

  Widget _getStoryRow() {
    return Padding(
      padding: const EdgeInsets.only(top: 100, left: 44, right: 44),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _getStoryBox(),
          SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Jasmine Levin',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'AR',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                '4m ago',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'AR',
                  fontWeight: FontWeight.w300,
                  color: Colors.white60,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 100,
          ),
          Image.asset('assets/images/icons/Close.png')
        ],
      ),
    );
  }

  Widget _getChangeStoryContainer() {
    return Padding(
      padding: EdgeInsets.only(top: 64),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 93,
            height: 4,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(40),
              ),
            ),
          ),
          SizedBox(
            width: 8,
          ),
          ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 14,
                sigmaY: 14,
              ),
              child: Container(
                width: 93,
                height: 4,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromRGBO(255, 255, 255, 0.1),
                      Color.fromRGBO(255, 255, 255, 0.1)
                    ],
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(40),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 8,
          ),
          ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 14,
                sigmaY: 14,
              ),
              child: Container(
                width: 93,
                height: 4,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromRGBO(255, 255, 255, 0.1),
                      Color.fromRGBO(255, 255, 255, 0.1)
                    ],
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(40),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
