import 'package:client/const/color_extension.dart';
import 'package:flutter/material.dart';

class RoundTextfield extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final TextInputType? keyboardType;
  final bool obsecureText;
  final Color? bgColor;
  final Widget? left;

  const RoundTextfield({
    super.key,
    this.controller,
    required this.hintText,
    this.keyboardType,
    this.obsecureText = false,
    this.bgColor,
    this.left,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor ?? AColor.textfield,
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      child: Row(
        children: [
          if (left != null)
            Padding(padding: EdgeInsets.only(left: 15), child: left!),

          Expanded(
            child: TextField(
              obscureText: obsecureText,
              keyboardType: keyboardType,
              autocorrect: false,
              controller: controller,

              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                hintText: hintText,
                hintStyle: TextStyle(
                  color: AColor.primaryText,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
