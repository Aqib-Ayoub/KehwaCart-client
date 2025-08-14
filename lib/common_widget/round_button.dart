import 'package:client/const/color_extension.dart';
import 'package:flutter/material.dart';

enum ButtonType { bgPrimary, textPrimary }

class RoundButton extends StatelessWidget {
  const RoundButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.type = ButtonType.bgPrimary,
  });
  final String text;
  final ButtonType type;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: media.height * .06,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: type == ButtonType.bgPrimary ? AColor.primary : AColor.white,
          borderRadius: BorderRadius.circular(28),
          border:
              type == ButtonType.bgPrimary
                  ? null
                  : Border.all(color: AColor.primary, width: 1),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: type == ButtonType.bgPrimary ? AColor.white : AColor.primary,
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
