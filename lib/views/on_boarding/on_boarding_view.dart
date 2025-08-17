import 'package:flutter/material.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  List pageArr = [
    {
      'title': 'Find Food Love',
      'subtitle':
          'Discover the best foods from over 1,000\nresturants and fast delvery to your\ndoorstep',
      'image': '',
    },
    {
      'title': 'Fast Delivery',
      'subtitle': 'fast food delivery to your home, office\nwhere you are',
      'image': '',
    },
    {
      'title': 'Live Tracking',
      'subtitle':
          'Discover the best foods from over 1,000\nresturants and fast delvery to your\ndoorstep',
      'image': '',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Stack(children: [PageView.builder(itemBuilder: (context))]),
    );
  }
}
