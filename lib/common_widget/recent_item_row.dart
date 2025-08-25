import 'package:client/const/color_extension.dart';
import 'package:flutter/material.dart';

class RecentItemRow extends StatelessWidget {
  final Map rObj;
  final VoidCallback onTap;
  const RecentItemRow({super.key, required this.rObj, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: onTap,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                rObj['image'].toString(),
                width: 70,
                height: 70,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 8.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    rObj['name'],
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
                        rObj['type'],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AColor.primaryText,
                          fontSize: 11,
                        ),
                      ),
                      Text(
                        ' . ',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: AColor.secondaryText),
                      ),
                      Text(
                        rObj['location'],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AColor.secondaryText,
                          fontSize: 11,
                        ),
                      ),
                      Image.asset(
                        'assets/images/rate.png',
                        width: 10,
                        height: 10,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        rObj['rate'],
                        textAlign: TextAlign.center,
                        style: TextStyle(color: AColor.primary, fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
