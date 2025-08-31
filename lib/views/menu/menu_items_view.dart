import 'package:client/common_widget/category_cell.dart';
import 'package:client/common_widget/most_popular_cell.dart';
import 'package:client/common_widget/popular_restaurant_row.dart';
import 'package:client/common_widget/recent_item_row.dart';
import 'package:client/common_widget/round_textfield.dart';
import 'package:client/common_widget/view_all_title_row.dart';
import 'package:client/const/color_extension.dart';
import 'package:flutter/material.dart';

class MenuItemsView extends StatefulWidget {
  const MenuItemsView({super.key});

  @override
  State<MenuItemsView> createState() => _MenuItemsViewState();
}

class _MenuItemsViewState extends State<MenuItemsView> {
  List catArr = [
    {'image': 'assets/images/cat_offer.png', 'name': 'Offers'},
    {'image': 'assets/images/cat_sri.png', 'name': 'Srinagar'},
    {'image': 'assets/images/cat_3.png', 'name': 'Kralgund'},
    {'image': 'assets/images/cat_4.png', 'name': 'Bicherwara'},
  ];
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
  List mostPopArr = [
    {
      'image': 'assets/images/m_res_1.png',
      'name': 'Minute by tuk tuk',
      'rate': '4.8',
      'rating': '128',
      'type': 'cafa',
      'food_type': 'Northern Food',
    },
    {
      'image': 'assets/images/m_res_2.png',
      'name': 'Cafe de Noir',
      'rate': '4.9',
      'rating': '125',
      'type': 'cafa',
      'food_type': 'Southern Food',
    },
  ];
  List recentArr = [
    {
      'image': 'assets/images/item_1.png',
      'name': 'Mulberry Pizza by Tawheed',
      'rate': '4.8',
      'rating': '128',
      'type': 'cafa',
      'location': 'Northern Food',
    },
    {
      'image': 'assets/images/item_2.png',
      'name': 'Barita',
      'rate': '4.9',
      'rating': '125',
      'type': 'cafa',
      'location': 'Southern Food',
    },
    {
      'image': 'assets/images/item_3.png',
      'name': 'Pizza Rush Hour',
      'rate': '4.9',
      'rating': '125',
      'type': 'cafa',
      'location': 'Southern Food',
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Good morning aqib!',
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
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Delvering to',
                      style: TextStyle(
                        color: AColor.secondaryText,
                        fontSize: 11,
                      ),
                    ),
                    SizedBox(height: 6.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Current Location',
                          style: TextStyle(
                            color: AColor.secondaryText,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(width: 25.0),
                        Image.asset(
                          'assets/images/dropdown.png',
                          width: 12,
                          height: 12,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25.0),
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
              SizedBox(
                height: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  itemCount: catArr.length,
                  itemBuilder: (context, index) {
                    var cObj = catArr[index] as Map? ?? {};
                    return CategoryCell(cObj: cObj, onTap: () {});
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: ViewAllTitleRow(
                  title: 'Popular Restaurants',
                  onView: () {},
                ),
              ),
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: ViewAllTitleRow(title: 'Most Popular', onView: () {}),
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  itemCount: mostPopArr.length,
                  itemBuilder: (context, index) {
                    var mObj = mostPopArr[index] as Map? ?? {};
                    return MostPopularCell(onTap: () {}, mObj: mObj);
                  },
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: ViewAllTitleRow(title: 'Recent Items', onView: () {}),
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  itemCount: recentArr.length,
                  itemBuilder: (context, index) {
                    var rObj = recentArr[index] as Map? ?? {};
                    return RecentItemRow(rObj: rObj, onTap: () {});
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
