import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';

final Color backgroundColor = HexColor('#E6EAF1');
final Color darkBlue = HexColor('#0D253C');
final Color darkBlueText = HexColor('#2D4379');
final Color darkGrey = HexColor('#7B8BB2');
final Color blue = HexColor('#376AED');
final Color blue2 = HexColor('#49B0E2');
final Color blue3 = HexColor('#9CECFB');
final Color splashScreen = HexColor('#BBC6D7');

class StoryImageConstants {
  static final List<String> imagePaths = [
    'assets/images/stories/story_1.jpg',
    'assets/images/stories/story_2.jpg',
    'assets/images/stories/story_3.jpg',
    'assets/images/stories/story_4.jpg',
    'assets/images/stories/story_5.jpg',
    'assets/images/stories/story_6.jpg',
    'assets/images/stories/story_7.jpg',
    'assets/images/stories/story_8.jpg',
  ];
}

class StoryNameConstants {
  static final List<String> texts = [
    'Emilia',
    'Richard',
    'Jasmine',
    'Sia',
    'Lucas',
    'Merry',
    'Jutin',
    'Taylor',
  ];
}

class StoryCategoryConstants {
  static final List<String> imagePaths = [
    'assets/images/icons/category_1.png',
    'assets/images/icons/category_2.png',
    'assets/images/icons/category_3.png',
    'assets/images/icons/category_4.png',
  ];
}

class PostImageConstants {
  static final List<String> imagePaths = [
    'assets/images/posts/large/large_post_1.jpg',
    'assets/images/posts/large/large_post_2.jpg',
    'assets/images/posts/large/large_post_3.jpg',
    'assets/images/posts/large/large_post_4.jpg',
    'assets/images/posts/large/large_post_5.jpg',
    'assets/images/posts/large/large_post_6.jpg',
  ];
}

class PostTextConstants {
  static final List<String> texts = [
    'Technology',
    'Adventure',
    'Technology',
    'Adventure',
    'Technology',
    'Adventure',
    'Technology',
    'Adventure',
  ];
}

List<OnBoardingItem> get onBoardingItems {
  List<OnBoardingItem> items = [];
  for (var i = 0; i < 4; i++) {
    items.add(
      OnBoardingItem('Read the article you want instantly',
          'You can read thousands of articles on Blog Club, save them in the application and share them with your loved ones.'),
    );
  }
  return items;
}

class OnBoardingItem {
  final String title;
  final String description;

  OnBoardingItem(this.title, this.description);
}
