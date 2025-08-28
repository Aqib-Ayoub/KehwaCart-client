import 'package:client/const/color_extension.dart';
import 'package:flutter/material.dart';

class Offers extends StatelessWidget {
  const Offers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Offers')),
      body: Column(
        children: [
          Container(decoration: BoxDecoration(color: AColor.primaryText)),
        ],
      ),
    );
  }
}
