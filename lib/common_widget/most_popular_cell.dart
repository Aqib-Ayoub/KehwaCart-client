import 'package:client/const/color_extension.dart';
import 'package:flutter/material.dart';

class MostPopularCell extends StatelessWidget {
  final VoidCallback onTap;
  final Map mObj;
  const MostPopularCell({super.key, required this.onTap, required this.mObj});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                mObj['image'].toString(),
                width: 220,
                height: 130,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              mObj['name'],
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AColor.primaryText,
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 4),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  mObj['type'],
                  textAlign: TextAlign.center,
                  style: TextStyle(color: AColor.primaryText, fontSize: 12),
                ),
                Text(
                  ' . ',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: AColor.secondaryText),
                ),
                Text(
                  mObj['food_type'],
                  textAlign: TextAlign.center,
                  style: TextStyle(color: AColor.secondaryText, fontSize: 12),
                ),
                Image.asset(
                  'assets/images/rate.png',
                  width: 10,
                  height: 10,
                  fit: BoxFit.cover,
                ),
                Text(
                  mObj['rate'],
                  textAlign: TextAlign.center,
                  style: TextStyle(color: AColor.primary, fontSize: 12),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
