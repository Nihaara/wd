import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:wd/one.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'Hampers.dart';
import 'Menulist.dart';
import 'Menulist.dart';
import 'Menulist.dart';
import 'Menulist.dart';
import 'Two.dart';
import 'WdProducts.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String dropdownValue = "Almond";
  var items = [
    'Almond',
    'Cashew',
    'Pistachio',
    'Walnuts',
    'Exotic Nuts',
    'Dry Fruits',
    'Spices',
    'HomeMade Chocolates'
  ];

  @override
  Widget build(BuildContext context) {
    List<String> list = <String>[
      'Almond',
      'Cashew',
      'Pistachio',
      'Walnuts',
      'Dry Fruits',
      'Exotic Nuts',
      'Spices',
      'HomeMade Chocolates'
    ];

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Winner Dates And Nuts',
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
        ),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
              onPressed: () => {},
              icon: Icon(
                Icons.search,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () => {},
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black,
              )),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    ' Welcome To Winner Dates And Nuts',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('Home',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainPage()),
                );
              },
            ),
            ExpansionTile(
              title: Text(
                "Our Products",
                // items.Products,
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500,color: Colors.black),
              ),
              children: <Widget>[
                ListTile(
                  title: Text(
                    "Dates",
                    // items.description,
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Dates()),
                    );
                  },
                ),
                ExpansionTile(
                  title: Text(
                    "Nuts",
                    // items.Products,
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
                  ),
                  children: <Widget>[
                    ListTile(
                      title: Text(
                        "Almonds",
                        // items.description,
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Badam()),
                        );
                      },
                    ),
                    ListTile(
                      title: Text(
                        "Cashews",
                        // items.description,
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Nuts()),
                        );
                      },
                    ),
                    ListTile(
                      title: Text(
                        "Pistachios",
                        // items.description,
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Pistachios()),
                        );
                      },
                    ),
                    ListTile(
                      title: Text(
                        "Walnuts",
                        // items.description,
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Walnut()),
                        );
                      },
                    ),
                    ListTile(
                      title: Text(
                        "Exotic Nuts",
                        // items.description,
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    )
                  ],
                ),
                ListTile(
                  title: Text(
                    "Dry Fruits",
                    // items.description,
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Fruits()),
                    );
                  },
                ),
                ListTile(
                  title: Text(
                    "Seeds",
                    // items.description,
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DrySeed()),
                    );
                  },
                ),
                ListTile(
                  title: Text(
                    "Spices",
                    // items.description,
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
                ListTile(
                  title: Text(
                    "HomeMade Chocolates",
                    // items.description,
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),
            // ListTile(
            //   // title: Text('Products'),
            //   leading: Column(
            //     mainAxisAlignment: MainAxisAlignment.start,
            //     children: [
            //       Expanded(child: )
            //       // Icon(Icons.arrow_drop_down),
            //       // DropdownButton<String>(
            //       //   value: dropdownValue,
            //       //   icon: const Icon(
            //       //     Icons.arrow_downward,
            //       //     size: 15,
            //       //   ),
            //       //   elevation: 1,
            //       //   // style: TextStyle(color: Colors.black87),
            //       //   onChanged: (String? value) {
            //       //     setState(() {
            //       //       dropdownValue = value!;
            //       //     });
            //       //   },
            //       //   items: list.map<DropdownMenuItem<String>>((String value) {
            //       //     return DropdownMenuItem<String>(
            //       //       value: value,
            //       //       child: Text(
            //       //         value,
            //       //         style: TextStyle(
            //       //             fontWeight: FontWeight.w600, fontSize: 18),
            //       //       ),
            //       //     );
            //       //   }).toList(),
            //       // ),
            //     ],
            //   ),
            //   onTap: () => {},
            // ),
            ListTile(
              title: Text(
                'Customized Gift Hampers',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Gift()),
                );
              },
            ),
            ListTile(
              title: Text('About  Us',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18)),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              title: Text('Contact Us',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          CarouselSlider.builder(
              options: CarouselOptions(
                height: 450,
                aspectRatio: 16 / 9,
                viewportFraction: 1,
                initialPage: 5,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.linearToEaseOut,
                enlargeCenterPage: true,
                enlargeFactor: 2,
                //onPageChanged: callbackFunction,
                scrollDirection: Axis.horizontal,
              ),
              itemCount: Mixed.length,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Logpage()),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        image: DecorationImage(
                          image: AssetImage(
                            Mixed[itemIndex].image,
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                );
              }),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Shop By Category",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
            ],
          ),
          Container(
            height: 550,
            width: 200,
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 2,
                  childAspectRatio: 1.5 / 2,
                ),
                itemCount: Mixed.length,
                itemBuilder: (BuildContext ctx, index) {
                  return Column(
                    children: [
                      Container(
                        height: 150,
                        width: 200,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            image: DecorationImage(
                              image: AssetImage(
                                Dat[index].image,
                              ),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Text(
                        Cashews[index].text,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}

///file1
class slide {
  String? image;
  String? text;
  String? text1;

  slide(this.image, this.text, this.text1);
}

List Show =
    slideDat.map((e) => slide(e['image'], e['text'], e['text1'])).toList();
var slideDat = [
  {
    "image": "assets/cashew180.png",
    "text": " Cashew No 1",
    "text1": " From ₹190gm"
  },
  {
    'image': 'assets/cashew240.png',
    'text': ' Cashew 320',
    "text1": "From  ₹180gm"
  },
  {'image': 'assets/cashew320.png', 'text': 'Cashew 180 ', "text1": "From ₹99"},
  {
    "image": "assets/cashew180.png",
    "text": " Cashew No 1",
    "text1": " From ₹190gm"
  },
  {
    'image': 'assets/cashew240.png',
    'text': ' Cashew 320',
    "text1": "From  ₹180gm"
  },
  {'image': 'assets/cashew320.png', 'text': 'Cashew 180 ', "text1": "From ₹99"},
  {
    'image': 'assets/cashew240.png',
    'text': ' Cashew 320',
    "text1": "From  ₹180gm"
  },
  {'image': 'assets/cashew320.png', 'text': 'Cashew 180 ', "text1": "From ₹99"},
  {
    "image": "assets/cashew180.png",
    "text": " Cashew No 1",
    "text1": " From ₹190gm"
  },
  {
    "image": "assets/cashew180.png",
    "text": " Cashew No 1",
    "text1": " From ₹190gm"
  },
  {
    'image': 'assets/almondNo1.png',
    'text': 'Mabroom No 1 ',
    "text1": "From ₹99"
  },
  {
    'image': 'assets/Almondusa.png',
    'text': 'Sukkary Rothab',
    "text1": "From ₹190"
  },
  {
    'image': 'assets/almondNo1.png',
    'text': 'Mabroom No 1 ',
    "text1": "From ₹99"
  },
  {
    'image': 'assets/Almondusa.png',
    'text': 'Sukkary Rothab',
    "text1": "From ₹190"
  },
];

///file2Category
class Category {
  String? image;
  String? text;

  Category(this.image, this.text);
}

List Mixed = CategoryDat.map((e) => Category(e['image'], e['text'])).toList();

var CategoryDat = [
  {
    "image": "assets/ajwa1.png",
    'text': 'Cashew 180 ',
  },
  {"image": "assets/Almondusa.png"},
  {"image": "assets/fig.png"},
  {"image": "assets/flax.png"},
  {"image": "assets/starseed.png"},
  {"image": "assets/orange.png"},
  {"image": "assets/flax.png"},
  {"image": "assets/starseed.png"},
  {"image": "assets/orange.png"},
];
