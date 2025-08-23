import 'package:client/common_widget/round_textfield.dart';
import 'package:client/const/color_extension.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController search = TextEditingController();
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
      'location': 'Northern Food',
    },
    {
      'image': 'assets/images/res_1.png',
      'name': 'Cafe de Noir',
      'rate': '4.9',
      'rating': '125',
      'type': 'cafa',
      'location': 'Southern Food',
    },
    {
      'image': 'assets/images/res_1.png',
      'name': 'Bakes by Tella',
      'rate': '4.5',
      'rating': '138',
      'type': 'cafe',
      'location': 'Northern Food ',
    },
  ];
  List mostPopArr = [
    {
      'image': 'assets/images/res_1.png',
      'name': 'Minute by tuk tuk',
      'rate': '4.8',
      'rating': '128',
      'type': 'cafa',
      'location': 'Northern Food',
    },
    {
      'image': 'assets/images/res_1.png',
      'name': 'Cafe de Noir',
      'rate': '4.9',
      'rating': '125',
      'type': 'cafa',
      'location': 'Southern Food',
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
                height: 140,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  itemCount: catArr.length,
                  itemBuilder: (context, index) {
                    var cObj = catArr[index] as Map? ?? {};
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              cObj['image'].toString(),
                              width: 85,
                              height: 85,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    );
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
