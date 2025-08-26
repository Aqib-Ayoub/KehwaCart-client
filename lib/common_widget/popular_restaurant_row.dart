import 'package:client/const/color_extension.dart';
import 'package:flutter/material.dart';

class PopularRestaurantRow extends StatelessWidget {
  final Map pObj;
  final VoidCallback onTap;
  const PopularRestaurantRow({
    super.key,
    required this.pObj,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              pObj['image'].toString(),
              width: double.maxFinite,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 12.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  pObj['name'],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AColor.primaryText,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/rate.png',
                      width: 10,
                      height: 10,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 4.0),
                    Text(
                      pObj['rate'],
                      textAlign: TextAlign.center,
                      style: TextStyle(color: AColor.primary, fontSize: 12),
                    ),
                    SizedBox(width: 8.0),
                    Text(
                      '(${pObj['rating']} Ratings)',
                      style: TextStyle(
                        color: AColor.secondaryText,
                        fontSize: 11,
                      ),
                    ),
                    SizedBox(width: 8.0),
                    Text(
                      pObj['type'],
                      textAlign: TextAlign.center,
                      style: TextStyle(color: AColor.primaryText, fontSize: 11),
                    ),
                    Text(
                      ' . ',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: AColor.secondaryText),
                    ),
                    Text(
                      pObj['food_type'],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AColor.secondaryText,
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
