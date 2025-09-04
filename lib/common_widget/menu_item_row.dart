import 'package:client/const/color_extension.dart';
import 'package:flutter/material.dart';

class MenuItemRow extends StatelessWidget {
  final Map mObj;
  final VoidCallback onTap;
  const MenuItemRow({super.key, required this.mObj, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: onTap,
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(13.0),
              child: Image.asset(
                mObj['image'].toString(),
                width: double.maxFinite,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: 200,
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(13),
                  bottomLeft: Radius.circular(13),
                ),
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    Colors.transparent,
                    Colors.black,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        mObj['name'],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AColor.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 1),
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
                            mObj['rate'],
                            textAlign: TextAlign.center,
                            style: TextStyle(color: AColor.white, fontSize: 12),
                          ),

                          SizedBox(width: 8.0),
                          Text(
                            mObj['type'],
                            textAlign: TextAlign.center,
                            style: TextStyle(color: AColor.white, fontSize: 11),
                          ),
                          Text(
                            ' . ',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: AColor.secondaryText),
                          ),
                          Text(
                            mObj['food_type'],
                            textAlign: TextAlign.center,
                            style: TextStyle(color: AColor.white, fontSize: 11),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 22.0),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
