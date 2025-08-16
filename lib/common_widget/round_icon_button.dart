import 'package:client/const/color_extension.dart';
import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final String image;
  final String text;
  final Color color;
  final VoidCallback onTap;
  const RoundIconButton({
    super.key,
    required this.image,
    required this.text,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 56,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(28),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(image, height: 15, width: 15),
            SizedBox(width: 8.0),
            Text(
              text,
              style: TextStyle(
                color: AColor.white,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
