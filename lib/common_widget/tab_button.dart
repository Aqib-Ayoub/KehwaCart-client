import 'package:client/const/color_extension.dart';
import 'package:flutter/material.dart';

class TabButton extends StatelessWidget {
  final VoidCallback onTab;
  final String title;
  final bool isSelected;
  final String icon;

  const TabButton({
    super.key,
    required this.onTab,
    required this.title,
    required this.isSelected,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTab,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            icon,
            width: 15,
            height: 15,
            color: isSelected ? AColor.primary : AColor.placeholder,
          ),
          SizedBox(height: 4),
          Text(
            title,
            style: TextStyle(
              color: isSelected ? AColor.primary : AColor.placeholder,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
