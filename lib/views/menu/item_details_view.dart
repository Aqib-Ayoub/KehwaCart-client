import 'package:client/common_widget/round_textfield.dart';
import 'package:client/const/color_extension.dart';
import 'package:flutter/material.dart';

class ItemDetailsView extends StatefulWidget {
  final Map mObj;
  const ItemDetailsView({super.key, required this.mObj});

  @override
  State<ItemDetailsView> createState() => _ItemDetailsViewState();
}

class _ItemDetailsViewState extends State<ItemDetailsView> {
  TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Column(
                children: [
                  SizedBox(height: 46.0),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/images/btn_back.png',
                            height: 20,
                            width: 20,
                          ),
                        ),
                        SizedBox(width: 8.0),

                        IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/images/shopping_cart.png',
                            height: 25,
                            width: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.0),

                  SizedBox(height: 15),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Column(
              children: [
                SizedBox(height: 46.0),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/images/btn_back.png',
                          height: 20,
                          width: 20,
                        ),
                      ),
                      SizedBox(width: 8.0),
                      // Text(
                      //   widget.mObj['name'].toString(),
                      //   style: TextStyle(
                      //     color: AColor.primaryText,
                      //     fontSize: 20,
                      //     fontWeight: FontWeight.w800,
                      //   ),
                      // ),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/images/shopping_cart.png',
                          height: 25,
                          width: 25,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.0),

                SizedBox(height: 15),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
