import 'package:client/common_widget/popular_restaurant_row.dart';
import 'package:client/common_widget/round_textfield.dart';
import 'package:client/const/color_extension.dart';
import 'package:flutter/material.dart';

class MenuItemsView extends StatefulWidget {
  final Map mObj;
  const MenuItemsView({super.key, required this.mObj});

  @override
  State<MenuItemsView> createState() => _MenuItemsViewState();
}

class _MenuItemsViewState extends State<MenuItemsView> {
  List popArr = [
    {
      'image': 'assets/images/res_1.png',
      'name': 'Minute by tuk tuk',
      'rate': '4.8',
      'rating': '128',
      'type': 'cafa',
      'food_type': 'Northern Food',
    },
    {
      'image': 'assets/images/res_1.png',
      'name': 'Cafe de Noir',
      'rate': '4.9',
      'rating': '125',
      'type': 'cafa',
      'food_type': 'Southern Food',
    },
    {
      'image': 'assets/images/res_1.png',
      'name': 'Bakes by Tella',
      'rate': '4.5',
      'rating': '138',
      'type': 'cafe',
      'food_type': 'Northern Food ',
    },
  ];
  TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                        '/assets/images/btn_back.png',
                        height: 20,
                        width: 20,
                      ),
                    ),
                    SizedBox(width: 8.0),
                    Text(
                      widget.mObj['name'].toString(),
                      style: TextStyle(
                        color: AColor.primaryText,
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
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

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: RoundTextfield(
                  hintText: 'Search Food',
                  controller: search,
                  left: Container(
                    alignment: Alignment.center,
                    width: 30,
                    child: Image.asset(
                      'assets/images/search.png',
                      width: 20,
                      height: 20,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 30),

              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                itemCount: popArr.length,
                itemBuilder: (context, index) {
                  var pObj = popArr[index] as Map? ?? {};
                  return PopularRestaurantRow(pObj: pObj, onTap: () {});
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
