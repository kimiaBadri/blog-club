import 'package:blog_club/constants/constants.dart';
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
        Container(
          width: double.infinity,
          height: 690,
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
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text('data'),
        ),
      ],
    );
  }
}
