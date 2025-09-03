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
  List menuArr = [
    {
      'image': 'assets/images/dess_1.png',
      'name': 'French Apple Pie',
      'rate': '4.8',
      'rating': '128',
      'type': 'Minute by tuk tuk',
      'food_type': 'Desserts',
    },
    {
      'image': 'assets/images/dess_2.png',
      'name': 'Dark Chocolate Cake',
      'rate': '4.9',
      'rating': '125',
      'type': 'Cakes by Tella',
      'food_type': 'Desserts',
    },
    {
      'image': 'assets/images/dess_3.png',
      'name': 'Street Shake',
      'rate': '4.5',
      'rating': '138',
      'type': 'Cafe Racer',
      'food_type': 'Desserts',
    },
    {
      'image': 'assets/images/dess_4.png',
      'name': 'Fudgy Chewy Brownies',
      'rate': '4.9',
      'rating': '138',
      'type': 'Cafe Racer',
      'food_type': 'Desserts',
    },
    {
      'image': 'assets/images/dess_1.png',
      'name': 'French Apple Pie',
      'rate': '4.8',
      'rating': '128',
      'type': 'Minute by tuk tuk',
      'food_type': 'Desserts',
    },
    {
      'image': 'assets/images/dess_2.png',
      'name': 'Dark Chocolate Cake',
      'rate': '4.9',
      'rating': '125',
      'type': 'Cakes by Tella',
      'food_type': 'Desserts',
    },
    {
      'image': 'assets/images/dess_3.png',
      'name': 'Street Shake',
      'rate': '4.5',
      'rating': '138',
      'type': 'Cafe Racer',
      'food_type': 'Desserts',
    },
    {
      'image': 'assets/images/dess_4.png',
      'name': 'Fudgy Chewy Brownies',
      'rate': '4.9',
      'rating': '138',
      'type': 'Cafe Racer',
      'food_type': 'Desserts',
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
                        'assets/images/btn_back.png',
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
                itemCount: menuArr.length,
                itemBuilder: (context, index) {
                  var mObj = menuArr[index] as Map? ?? {};
                  return PopularRestaurantRow(pObj: mObj, onTap: () {});
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
