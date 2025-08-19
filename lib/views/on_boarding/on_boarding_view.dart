import 'package:client/const/color_extension.dart';
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
      'image': 'assets/images/on_boarding_2.png',
    },
    {
      'title': 'Live Tracking',
      'subtitle':
          'Discover the best foods from over 1,000\nresturants and fast delvery to your\ndoorstep',
      'image': 'assets/images/on_boarding_3.png',
    },
  ];
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          PageView.builder(
            controller: controller,
            itemCount: pageArr.length,
            itemBuilder: (context, index) {
              var pObj = pageArr[index] as Map? ?? {};
              return Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: media.width,
                    height: media.width,
                    alignment: Alignment.center,
                    child: Image.asset(
                      pObj['image'].toString(),
                      width: media.width * 0.65,
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: media.width * 0.1),
                  Text(
                    pObj['title'].toString(),
                    style: TextStyle(
                      fontSize: 28,
                      color: AColor.primaryText,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(height: media.width * 0.07),
                  Text(
                    pObj['subtitle'],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AColor.secondaryText,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: media.width * 0.07),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
