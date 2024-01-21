import 'package:blog_club/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: _getHeader(context),
            ),
            SliverToBoxAdapter(
              child: _getStoryList(),
            ),
            SliverToBoxAdapter(
              child: _getPostList(),
            ),
            SliverPadding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 32),
              sliver: SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Latest News',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      Text(
                        'More',
                        style: Theme.of(context).textTheme.headline4,
                      )
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: _getNews(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 20),
            ),
            SliverToBoxAdapter(
              child: _getNews(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 20),
            ),
            SliverToBoxAdapter(
              child: _getNews(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 20),
            ),
            SliverToBoxAdapter(
              child: _getNews(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 20),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getNews() {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              blurStyle: BlurStyle.normal,
              color: Color(0xaa0D253C),
              offset: Offset(0, 4),
              blurRadius: 4,
              spreadRadius: 0)
        ],
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      margin: EdgeInsets.symmetric(horizontal: 40),
      width: 295,
      height: 120,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
            child: Image.asset('assets/images/posts/small/small_post_1.jpg'),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('BIG DATA'),
              SizedBox(
                height: 10,
              ),
              Text('Why Big Data Needs'),
              SizedBox(
                height: 4,
              ),
              Text('Thick Data?')
            ],
          ),
        ],
      ),
    );
  }

  Widget _getPostList() {
    return Container(
      height: 460,
      child: CustomScrollView(
        scrollDirection: Axis.horizontal,
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return _getPost(context, index);
            }, childCount: 8),
          ),
        ],
      ),
    );
  }

  Widget _getPost(BuildContext context, int index) {
    return Stack(
      children: [
        Positioned.fill(
          top: 100,
          right: 75,
          left: 75,
          bottom: 24,
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 22,
                  color: Color(0xaa0D253C),
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(24, 40, 24, 40),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(32)),
            child: FittedBox(
              fit: BoxFit.cover,
              child: Image.asset(PostImageConstants
                  .imagePaths[index % PostImageConstants.imagePaths.length]),
            ),
          ),
          width: 336,
          height: 373,
          foregroundDecoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(32),
              bottomRight: Radius.circular(32),
            ),
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                HexColor('#0D253C'),
                Colors.transparent,
                Colors.transparent,
              ],
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(32),
            ),
          ),
        ),
        Positioned(
          bottom: 80,
          left: 60,
          child: Text(
            PostTextConstants
                .texts[index % PostImageConstants.imagePaths.length],
            style: Theme.of(context).textTheme.headline3,
          ),
        )
      ],
    );
  }

  Widget _getHeader(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 40, right: 40, top: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Hi, Jonathan!',
                  style: Theme.of(context).textTheme.headline1),
              SizedBox(
                width: 32,
                height: 32,
                child: Image.asset('assets/images/icons/notification.png'),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Text('Explore today’s',
              style: Theme.of(context).textTheme.headline2),
        ),
      ],
    );
  }

  Widget _getStoryList() {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
      height: 100,
      child: CustomScrollView(
        scrollDirection: Axis.horizontal,
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return _getStoryBox(index);
            }, childCount: 8),
          ),
        ],
      ),
    );
  }

  Widget _getStoryBox(int index) {
    return Container(
      height: 80,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              Container(
                margin: EdgeInsets.only(left: 4, top: 0, right: 4, bottom: 0),
                width: 68,
                height: 68,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(24)),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [blue, blue2, blue3],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Container(
                    width: 62,
                    height: 62,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        width: 54,
                        height: 54,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(18)),
                          child: Image.asset(StoryImageConstants.imagePaths[
                              index % StoryImageConstants.imagePaths.length]),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                  height: 30,
                  width: 30,
                  child: Image.asset(StoryCategoryConstants.imagePaths[
                      index % StoryCategoryConstants.imagePaths.length]))
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Text(
              StoryNameConstants.texts[index % StoryNameConstants.texts.length])
        ],
      ),
    );
  }
}
