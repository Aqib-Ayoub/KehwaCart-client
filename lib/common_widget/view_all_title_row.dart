import 'package:client/const/color_extension.dart';
import 'package:flutter/material.dart';

class ViewAllTitleRow extends StatelessWidget {
  const ViewAllTitleRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Popular Restaurants",
          style: TextStyle(
            color: AColor.primaryText,
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'View all',
            style: TextStyle(
              color: AColor.primary,
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
