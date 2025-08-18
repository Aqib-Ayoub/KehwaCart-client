import 'package:flutter/material.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  int selectPage = 0;
  PageController controller = PageController();

  List pageArr = [
    {
      'title': 'Find Food Love',
      'subtitle':
          'Discover the best foods from over 1,000\nresturants and fast delvery to your\ndoorstep',
      'image': 'assets/images/on_boarding_1.png',
    },
    {
      'title': 'Fast Delivery',
      'subtitle': 'fast food delivery to your home, office\nwhere you are',
      'image': 'assets/images/on_boarding_1.png',
    },
    {
      'title': 'Live Tracking',
      'subtitle':
          'Discover the best foods from over 1,000\nresturants and fast delvery to your\ndoorstep',
      'image': 'assets/images/on_boarding_1.png',
    },
  ];
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: controller,
            itemCount: pageArr.length,
            itemBuilder: (context, index) {
              var pObj = pageArr[index] as Map? ?? {};
              return Container(
                width: media.width,
                height: media.width,
                alignment: Alignment.center,
                child: Image.asset(
                  pObj['image'].toString(),
                  width: media.width * 0.6,
                  fit: BoxFit.contain,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
