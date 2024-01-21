import 'package:blog_club/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StoryPage extends StatelessWidget {
  const StoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          decoration: BoxDecoration(color: blue),
        ),
        _getImageContainer(),
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
              )
            ],
          ),
        )
      ],
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
      top: 770,
      child: Row(
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                minimumSize: Size(130, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                backgroundColor: Colors.white),
            onPressed: () {},
            child: Center(
              child: Text(
                'Read More',
                style: TextStyle(
                  fontSize: 14,
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
}
