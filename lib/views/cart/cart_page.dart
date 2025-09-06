import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
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
            child: Column(children: [SizedBox(height: 46.0)]),
          ),
        ],
      ),
    );
  }
}
