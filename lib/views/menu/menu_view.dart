import 'package:client/common_widget/round_textfield.dart';
import 'package:client/const/color_extension.dart';
import 'package:flutter/material.dart';

class MenuView extends StatefulWidget {
  const MenuView({super.key});

  @override
  State<MenuView> createState() => _MenuState();
}

class _MenuState extends State<MenuView> {
  List menuArr = [
    {'name': 'Food', 'image': 'assets/images/menu_1.png', 'items_count': '120'},
    {
      'name': 'Beverages',
      'image': 'assets/images/menu_2.png',
      'items_count': '230',
    },
    {
      'name': 'Desserts',
      'image': 'assets/images/menu_3.png',
      'items_count': '155',
    },
    {
      'name': 'Promotions',
      'image': 'assets/images/menu_4.png',
      'items_count': '137',
    },
  ];
  TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 200),
            width: media.width * 0.27,
            height: media.height * 0.55,
            decoration: BoxDecoration(
              color: AColor.primary,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(35),
                bottomRight: Radius.circular(35),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  SizedBox(height: 46.0),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Menu',
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
                            width: 25,
                            height: 25,
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
                  SizedBox(height: 30.0),
                  ListView.builder(
                    padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: menuArr.length,
                    itemBuilder: (context, index) {
                      var mObj = menuArr[index] as Map? ?? {};
                      return Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 8, right: 20),
                            width: media.width - 100,
                            height: 90,
                            decoration: BoxDecoration(
                              color: AColor.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                bottomLeft: Radius.circular(25),
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 7,
                                  offset: Offset(0, 4),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                mObj['image'].toString(),
                                width: 80,
                                height: 80,
                              ),
                              SizedBox(width: 15),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      mObj['name'].toString(),
                                      style: TextStyle(
                                        color: AColor.primaryText,
                                        fontSize: 22,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(
                                      '${mObj['items_count']} items',
                                      style: TextStyle(
                                        color: AColor.secondaryText,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 35,
                                height: 35,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: AColor.white,
                                  borderRadius: BorderRadius.circular(17.5),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 4,
                                      offset: Offset(0, 2),
                                    ),
                                  ],
                                ),
                                child: Image.asset(
                                  'assets/images/btn_next.png',
                                  width: 15,
                                  height: 15,
                                ),
                              ),
                            ],
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
