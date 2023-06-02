import 'dart:math';

import 'package:flutter/material.dart';

import 'Menulist.dart';
import 'Two.dart';

class Dates extends StatefulWidget {
  const Dates({Key? key}) : super(key: key);

  @override
  State<Dates> createState() => _DatesState();
}

class _DatesState extends State<Dates> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Winner Dates And Nuts',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MainPage()),
            ),
          },
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
            size: 30,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () => {},
              icon: Icon(
                Icons.search,
                color: Colors.black,
                size: 30,
              )),
          IconButton(
              onPressed: () => {},
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black,
                size: 30,
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: double.infinity,
          // color: Colors.red,

          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MainPage()),
              );
            },
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 1.30 / 2,
                ),
                itemCount: Dat.length,
                itemBuilder: (BuildContext ctx, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 220,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            image: DecorationImage(
                              image: AssetImage(
                                Dat[index].image,
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Text(
                        Dat[index].text,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        Dat[index].text1,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.yellow.shade800,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: ElevatedButton(
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => const Navi()),
                            // );
                          },
                          child: Text(
                            "Add To Cart",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffd3a32b),
                            shape: RoundedRectangleBorder(),
                          ),
                        ),
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.all(12.0),
                      //   child: Container(
                      //     height:50,
                      //     width:290,
                      //     color: Colors.yellow.shade700,
                      //
                      //
                      //     // child: Column(
                      //     //   children: [
                      //     //
                      //     //   ],
                      //     ),
                      // ),
                      // ),
                    ],
                  );
                }),
          ),
        ),
      ),
    );
  }
}

///file1Dates
class Wdates {
  String? image;
  String? text;
  String? text1;

  Wdates(this.image, this.text, this.text1);
}

List Dat =
    WdatesDat.map((e) => Wdates(e['image'], e['text'], e['text1'])).toList();

var WdatesDat = [
  {
    "image": "assets/ajwa1.png",
    "text": " Premium Ajwa No:1",
    "text1": " From ₹190gm"
  },
  {
    'image': 'assets/Jordan.png',
    'text': ' Premium Medjooul Jordan',
    "text1": "From  ₹180gm"
  },
  {
    'image': 'assets/mabroom1.png',
    'text': 'Mabroom No 1 ',
    "text1": "From ₹99"
  },
  {
    'image': 'assets/Sukkary.png',
    'text': 'Sukkary Rothab',
    "text1": "From ₹190"
  },
  {
    "image": "assets/ajwa1.png",
    "text": " Premium Ajwa No:1",
    "text1": " From ₹190gm"
  },
  {
    'image': 'assets/Jordan.png',
    'text': ' Premium Medjooul Jordan',
    "text1": "From  ₹180gm"
  },
  {
    'image': 'assets/mabroom1.png',
    'text': 'Mabroom No 1 ',
    "text1": "From ₹99"
  },
  {
    'image': 'assets/Sukkary.png',
    'text': 'Sukkary Rothab',
    "text1": "From ₹190"
  },
  {
    "image": "assets/ajwa1.png",
    "text": " Premium Ajwa No:1",
    "text1": " From ₹190gm"
  },
  {
    'image': 'assets/Jordan.png',
    'text': ' Premium Medjooul Jordan',
    "text1": "From  ₹180gm"
  },
  {
    "image": "assets/ajwa1.png",
    "text": " Premium Ajwa No:1",
    "text1": " From ₹190gm"
  },
  {
    'image': 'assets/Jordan.png',
    'text': ' Premium Medjooul Jordan',
    "text1": "From  ₹180gm"
  },
  {
    "image": "assets/ajwa1.png",
    "text": " Premium Ajwa No:1",
    "text1": " From ₹190gm"
  },
  {
    'image': 'assets/Jordan.png',
    'text': ' Premium Medjooul Jordan',
    "text1": "From  ₹180gm"
  },
  {
    "image": "assets/ajwa1.png",
    "text": " Premium Ajwa No:1",
    "text1": " From ₹190gm"
  },
  {
    'image': 'assets/Jordan.png',
    'text': ' Premium Medjooul Jordan',
    "text1": "From  ₹180gm"
  },
  {
    "image": "assets/ajwa1.png",
    "text": " Premium Ajwa No:1",
    "text1": " From ₹190gm"
  },
  {
    'image': 'assets/Jordan.png',
    'text': ' Premium Medjooul Jordan',
    "text1": "From  ₹180gm"
  },
  {
    "image": "assets/ajwa1.png",
    "text": " Premium Ajwa No:1",
    "text1": " From ₹190gm"
  },
  {
    'image': 'assets/Jordan.png',
    'text': ' Premium Medjooul Jordan',
    "text1": "From  ₹180gm"
  },
  {
    "image": "assets/ajwa1.png",
    "text": " Premium Ajwa No:1",
    "text1": " From ₹190gm"
  },
  {
    'image': 'assets/Jordan.png',
    'text': ' Premium Medjooul Jordan',
    "text1": "From  ₹180gm"
  },
  {
    "image": "assets/ajwa1.png",
    "text": " Premium Ajwa No:1",
    "text1": " From ₹190gm"
  },
  {
    'image': 'assets/Jordan.png',
    'text': ' Premium Medjooul Jordan',
    "text1": "From  ₹180gm"
  },
  {
    "image": "assets/ajwa1.png",
    "text": " Premium Ajwa No:1",
    "text1": " From ₹190gm"
  },
  {
    'image': 'assets/Jordan.png',
    'text': ' Premium Medjooul Jordan',
    "text1": "From  ₹180gm"
  },
];

///class2
class Nuts extends StatefulWidget {
  const Nuts({Key? key}) : super(key: key);

  @override
  State<Nuts> createState() => _NutsState();
}

class _NutsState extends State<Nuts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Winner Dates And Nuts',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MainPage()),
            ),
          },
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
            size: 30,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () => {},
              icon: Icon(
                Icons.search,
                color: Colors.black,
                size: 30,
              )),
          IconButton(
              onPressed: () => {},
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black,
                size: 30,
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: double.infinity,
          // color: Colors.red,

          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MainPage()),
              );
            },
            child: GridView.builder(
                gridDelegate:
                    // SliverGridDelegateWithMaxCrossAxisExtent(
                    //
                    //      maxCrossAxisExtent: 150,
                    //     mainAxisSpacing: 15,
                    //     crossAxisSpacing: 15,
                    // childAspectRatio: .8/2),
                    SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 1.30 / 2,
                ),
                itemCount: Cashews.length,
                itemBuilder: (BuildContext ctx, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 220,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            image: DecorationImage(
                              image: AssetImage(
                                Cashews[index].image,
                              ),
                              fit: BoxFit.cover,
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
                      Text(
                        Cashews[index].text1,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.yellow.shade800,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: ElevatedButton(
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => const Navi()),
                            // );
                          },
                          child: Text(
                            "Add To Cart",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffd3a32b),
                            shape: RoundedRectangleBorder(),
                          ),
                        ),
                      ),
                    ],
                  );
                }),
          ),
        ),
      ),
    );
  }
}

///file2Nuts
class Cashew {
  String? image;
  String? text;
  String? text1;

  Cashew(this.image, this.text, this.text1);
}

List Cashews = CashewDat.map((e) => Cashew(e['image'], e['text'], e['text1'])).toList();
var CashewDat = [
  {"image": "assets/cashew180.png", "text": " Cashew No 180", "text1": " From ₹190gm"},
  {'image': 'assets/cashew320.png', 'text': 'Almond No 1', "text1": "From  ₹180gm"},
  {'image': 'assets/cashew180.png', 'text': ' Pista No !', "text1": "From  ₹180gm"},
  {'image': 'assets/cashew320.png', 'text': 'Cashew 180 ', "text1": "From ₹99"},
  {'image': 'assets/cashew320.png', 'text': 'Cashew 180 ', "text1": "From ₹99"},
  {'image': 'assets/Pista1.png', 'text': 'Pista No 1 ', "text1": "From ₹99"},
  {'image': 'assets/Almondusa.png', 'text': 'Almondusa', "text1": "From ₹190"},
  {'image': 'assets/Almondusa.png', 'text': 'Almondusa', "text1": "From ₹190"},
  {'image': 'assets/Almondusa.png', 'text': 'Almondusa', "text1": "From ₹190"},
  {"image": "assets/cashew180.png", "text": " Cashew No 1", "text1": " From ₹190gm"},
  {'image': 'assets/cashew240.png', 'text': ' Cashew 320', "text1": "From  ₹180gm"},
  {"image": "assets/cashew180.png", "text": " Cashew No 1", "text1": " From ₹190gm"},
  {'image': 'assets/cashew240.png', 'text': ' Cashew 320', "text1": "From  ₹180gm"},
  {"image": "assets/cashew180.png", "text": " Cashew No 1", "text1": " From ₹190gm"},
  {'image': 'assets/cashew240.png', 'text': ' Cashew 240', "text1": "From  ₹250"},
];



///CLASS3 ALMOND
class Badam extends StatefulWidget {
  const Badam({Key? key}) : super(key: key);

  @override
  State<Badam> createState() => _BadamState();
}

class _BadamState extends State<Badam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Winner Dates And Nuts',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MainPage()),
            ),
          },
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
            size: 30,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () => {},
              icon: Icon(
                Icons.search,
                color: Colors.black,
                size: 30,
              )),
          IconButton(
              onPressed: () => {},
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black,
                size: 30,
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: double.infinity,
          // color: Colors.red,

          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MainPage()),
              );
            },
            child: GridView.builder(
                gridDelegate:
                // SliverGridDelegateWithMaxCrossAxisExtent(
                //
                //      maxCrossAxisExtent: 150,
                //     mainAxisSpacing: 15,
                //     crossAxisSpacing: 15,
                // childAspectRatio: .8/2),
                SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 1.30 / 2,
                ),
                itemCount: Drieds.length,
                itemBuilder: (BuildContext ctx, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 220,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            image: DecorationImage(
                              image: AssetImage(
                                Almonds[index].image,
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Text(
                        Almonds[index].text,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        Almonds[index].text1,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.yellow.shade800,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: ElevatedButton(
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => const Navi()),
                            // );
                          },
                          child: Text(
                            "Add To Cart",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffd3a32b),
                            shape: RoundedRectangleBorder(),
                          ),
                        ),
                      ),
                    ],
                  );
                }),
          ),
        ),
      ),
    );
  }
}


///FILE 3 Badam
class Almond {
  String? image;
  String? text;
  String? text1;

  Almond(this.image, this.text, this.text1);
}

List Almonds = AlmondDat.map((e) => Almond(e['image'], e['text'], e['text1'])).toList();
var AlmondDat = [
  {"image": "assets/almondNO1.png", "text": " Cashew No 180", "text1": " From ₹190gm"},
  {'image': 'assets/Almondusa.png', 'text': 'Almond No 1', "text1": "From  ₹180gm"},
  {'image': 'assets/almondNO1.png', 'text': ' Pista No !', "text1": "From  ₹180gm"},
  {'image': 'assets/Almondusa.png', 'text': 'Cashew 180 ', "text1": "From ₹99"},
  {'image': 'assets/almondNO1.png', 'text': 'Cashew 180 ', "text1": "From ₹99"},
  {'image': 'assets/Almondusa.png', 'text': 'Pista No 1 ', "text1": "From ₹99"},
  {'image': 'assets/almondNO1.png', 'text': 'Almondusa', "text1": "From ₹190"},
  {'image': 'assets/Almondusa.png', 'text': 'Almondusa', "text1": "From ₹190"},

];

///CLASS 4 PISTACHIOS
class Pistachios extends StatefulWidget {
  const Pistachios({Key? key}) : super(key: key);

  @override
  State<Pistachios> createState() => _PistachiosState();
}

class _PistachiosState extends State<Pistachios> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Winner Dates And Nuts',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MainPage()),
            ),
          },
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
            size: 30,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () => {},
              icon: Icon(
                Icons.search,
                color: Colors.black,
                size: 30,
              )),
          IconButton(
              onPressed: () => {},
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black,
                size: 30,
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: double.infinity,
          // color: Colors.red,

          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MainPage()),
              );
            },
            child: GridView.builder(
                gridDelegate:
                // SliverGridDelegateWithMaxCrossAxisExtent(
                //
                //      maxCrossAxisExtent: 150,
                //     mainAxisSpacing: 15,
                //     crossAxisSpacing: 15,
                // childAspectRatio: .8/2),
                SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 1.30 / 2,
                ),
                itemCount: Drieds.length,
                itemBuilder: (BuildContext ctx, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 220,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            image: DecorationImage(
                              image: AssetImage(
                                Pistas[index].image,
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Text(
                        Pistas[index].text,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        Pistas[index].text1,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.yellow.shade800,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: ElevatedButton(
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => const Navi()),
                            // );
                          },
                          child: Text(
                            "Add To Cart",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffd3a32b),
                            shape: RoundedRectangleBorder(),
                          ),
                        ),
                      ),
                    ],
                  );
                }),
          ),
        ),
      ),
    );
  }
}

///FILE 4 PISTACHIOS
class Pista {
  String? image;
  String? text;
  String? text1;

  Pista(this.image, this.text, this.text1);
}

List Pistas = PistaDat.map((e) => Pista(e['image'], e['text'], e['text1'])).toList();
var PistaDat = [
  {"image": "assets/Pista1.png", "text": " Cashew No 180", "text1": " From ₹190gm"},
  {'image': 'assets/PistaIran.png', 'text': 'Almond No 1', "text1": "From  ₹180gm"},
  {'image': 'assets/Pista1.png', 'text': ' Pista No !', "text1": "From  ₹180gm"},
  {'image': 'assets/PistaIran.png', 'text': 'Cashew 180 ', "text1": "From ₹99"},
  {'image': 'assets/Pista1.png', 'text': 'Cashew 180 ', "text1": "From ₹99"},
  {'image': 'assets/PistaIran.png', 'text': 'Pista No 1 ', "text1": "From ₹99"},
  {'image': 'assets/Pista1.png', 'text': 'Almondusa', "text1": "From ₹190"},
  {'image': 'assets/PistaIran.png', 'text': 'Almondusa', "text1": "From ₹190"},

];

///CLASS 5 WALNUTS
class Walnut extends StatefulWidget {
  const Walnut({Key? key}) : super(key: key);

  @override
  State<Walnut> createState() => _WalnutState();
}

class _WalnutState extends State<Walnut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Winner Dates And Nuts',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MainPage()),
            ),
          },
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
            size: 30,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () => {},
              icon: Icon(
                Icons.search,
                color: Colors.black,
                size: 30,
              )),
          IconButton(
              onPressed: () => {},
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black,
                size: 30,
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: double.infinity,
          // color: Colors.red,

          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MainPage()),
              );
            },
            child: GridView.builder(
                gridDelegate:
                // SliverGridDelegateWithMaxCrossAxisExtent(
                //
                //      maxCrossAxisExtent: 150,
                //     mainAxisSpacing: 15,
                //     crossAxisSpacing: 15,
                // childAspectRatio: .8/2),
                SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 1.30 / 2,
                ),
                itemCount: Wal.length,
                itemBuilder: (BuildContext ctx, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 220,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            image: DecorationImage(
                              image: AssetImage(
                                Wal[index].image,
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Text(
                        Wal[index].text,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        Wal[index].text1,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.yellow.shade800,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: ElevatedButton(
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => const Navi()),
                            // );
                          },
                          child: Text(
                            "Add To Cart",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffd3a32b),
                            shape: RoundedRectangleBorder(),
                          ),
                        ),
                      ),
                    ],
                  );
                }),
          ),
        ),
      ),

    );
  }
}

///FILE 5 WALNUTS
class Walnuts {
  String? image;
  String? text;
  String? text1;

  Walnuts(this.image, this.text, this.text1);
}

List Wal = WalnutsDat.map((e) => Walnuts(e['image'], e['text'], e['text1'])).toList();
var WalnutsDat = [
  {"image": "assets/walnut1.png", "text": " Cashew No 180", "text1": " From ₹190gm"},
  {'image': 'assets/Wwhole.png', 'text': 'Almond No 1', "text1": "From  ₹180gm"},
  {'image': 'assets/walnut2.png', 'text': ' Pista No !', "text1": "From  ₹180gm"},
  {'image': 'assets/walnut1.png', 'text': 'Cashew 180 ', "text1": "From ₹99"},
  {'image': 'assets/Wwhole.png', 'text': 'Cashew 180 ', "text1": "From ₹99"},
  {'image': 'assets/walnut2.png', 'text': 'Pista No 1 ', "text1": "From ₹99"},
  {'image': 'assets/walnut1.png', 'text': 'Almondusa', "text1": "From ₹190"},
  {'image': 'assets/Wwhole.png', 'text': 'Almondusa', "text1": "From ₹190"},

];


///CLASS 6 Exoctic Nuts
class Exotic extends StatefulWidget {
  const Exotic({Key? key}) : super(key: key);

  @override
  State<Exotic> createState() => _ExoticState();
}

class _ExoticState extends State<Exotic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Winner Dates And Nuts',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MainPage()),
            ),
          },
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
            size: 30,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () => {},
              icon: Icon(
                Icons.search,
                color: Colors.black,
                size: 30,
              )),
          IconButton(
              onPressed: () => {},
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black,
                size: 30,
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: double.infinity,
          // color: Colors.red,

          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MainPage()),
              );
            },
            child: GridView.builder(
                gridDelegate:
                // SliverGridDelegateWithMaxCrossAxisExtent(
                //
                //      maxCrossAxisExtent: 150,
                //     mainAxisSpacing: 15,
                //     crossAxisSpacing: 15,
                // childAspectRatio: .8/2),
                SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 1.30 / 2,
                ),
                itemCount: Drieds.length,
                itemBuilder: (BuildContext ctx, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 220,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            image: DecorationImage(
                              image: AssetImage(
                                Exotics[index].image,
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Text(
                        Exotics[index].text,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        Exotics[index].text1,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.yellow.shade800,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: ElevatedButton(
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => const Navi()),
                            // );
                          },
                          child: Text(
                            "Add To Cart",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffd3a32b),
                            shape: RoundedRectangleBorder(),
                          ),
                        ),
                      ),
                    ],
                  );
                }),
          ),
        ),
      ),

    );
  }
}

///FILE 6 EXOTIC NUTS

class Exo {
  String? image;
  String? text;
  String? text1;

  Exo(this.image, this.text, this.text1);
}

List Exotics = ExoDat.map((e) => Exo(e['image'], e['text'], e['text1'])).toList();
var ExoDat = [
  {"image": "assets/walnut1.png", "text": " Cashew No 180", "text1": " From ₹190gm"},
  {'image': 'assets/Wwhole.png', 'text': 'Almond No 1', "text1": "From  ₹180gm"},
  {'image': 'assets/walnut2.png', 'text': ' Pista No !', "text1": "From  ₹180gm"},
  {'image': 'assets/walnut1.png', 'text': 'Cashew 180 ', "text1": "From ₹99"},
  {'image': 'assets/Wwhole.png', 'text': 'Cashew 180 ', "text1": "From ₹99"},
  {'image': 'assets/walnut2.png', 'text': 'Pista No 1 ', "text1": "From ₹99"},
  {'image': 'assets/walnut1.png', 'text': 'Almondusa', "text1": "From ₹190"},
  {'image': 'assets/Wwhole.png', 'text': 'Almondusa', "text1": "From ₹190"},

];



///CLASS3 Dried Fruits
class Fruits extends StatefulWidget {
  const Fruits({Key? key}) : super(key: key);

  @override
  State<Fruits> createState() => _FruitsState();
}

class _FruitsState extends State<Fruits> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Winner Dates And Nuts',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MainPage()),
            ),
          },
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
            size: 30,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () => {},
              icon: Icon(
                Icons.search,
                color: Colors.black,
                size: 30,
              )),
          IconButton(
              onPressed: () => {},
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black,
                size: 30,
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: double.infinity,
          // color: Colors.red,

          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MainPage()),
              );
            },
            child: GridView.builder(
                gridDelegate:
                    // SliverGridDelegateWithMaxCrossAxisExtent(
                    //
                    //      maxCrossAxisExtent: 150,
                    //     mainAxisSpacing: 15,
                    //     crossAxisSpacing: 15,
                    // childAspectRatio: .8/2),
                    SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 1.30 / 2,
                ),
                itemCount: Drieds.length,
                itemBuilder: (BuildContext ctx, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 220,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            image: DecorationImage(
                              image: AssetImage(
                                Drieds[index].image,
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Text(
                        Drieds[index].text,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        Drieds[index].text1,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.yellow.shade800,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: ElevatedButton(
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => const Navi()),
                            // );
                          },
                          child: Text(
                            "Add To Cart",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffd3a32b),
                            shape: RoundedRectangleBorder(),
                          ),
                        ),
                      ),
                    ],
                  );
                }),
          ),
        ),
      ),
    );
  }
}

///File3 Dried Fruits
class Dried {
  String? image;
  String? text;
  String? text1;

  Dried(this.image, this.text, this.text1);
}

List Drieds =
    DriedDat.map((e) => Dried(e['image'], e['text'], e['text1'])).toList();
var DriedDat = [
  {"image": "assets/apricot.png", "text": " Apricot", "text1": " From ₹190gm"},
  {'image': 'assets/fig.png', 'text': 'Fig NO 1', "text1": "From  ₹180gm"},
  {
    'image': 'assets/kishmish.png',
    'text': ' Kishmish Indian',
    "text1": "From  ₹180gm"
  },
  {'image': 'assets/orange.png', 'text': 'Dried Orange ', "text1": "From ₹99"},
  {
    'image': 'assets/pinapple.png',
    'text': ' Pineapple Whole',
    "text1": "From  ₹180gm"
  },
  {'image': 'assets/orange.png', 'text': 'Cashew 180 ', "text1": "From ₹99"},
  {"image": "assets/apricot.png", "text": " Apricot", "text1": " From ₹190gm"},
  {'image': 'assets/fig.png', 'text': 'Fig NO 1', "text1": "From  ₹180gm"},
  {
    'image': 'assets/kishmish.png',
    'text': ' Kishmish Indian',
    "text1": "From  ₹180gm"
  },
  {'image': 'assets/orange.png', 'text': 'Dried Orange ', "text1": "From ₹99"},
  {
    'image': 'assets/pinapple.png',
    'text': ' Pineapple Whole',
    "text1": "From  ₹180gm"
  },
  {'image': 'assets/cashew320.png', 'text': 'Cashew 180 ', "text1": "From ₹99"},
];

///CLASS $ SEEDS
class DrySeed extends StatefulWidget {
  const DrySeed({Key? key}) : super(key: key);

  @override
  State<DrySeed> createState() => _DrySeedState();
}

class _DrySeedState extends State<DrySeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Winner Dates And Nuts',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MainPage()),
            ),
          },
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
            size: 30,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () => {},
              icon: Icon(
                Icons.search,
                color: Colors.black,
                size: 30,
              )),
          IconButton(
              onPressed: () => {},
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black,
                size: 30,
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: double.infinity,
          // color: Colors.red,

          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MainPage()),
              );
            },
            child: GridView.builder(
                gridDelegate:
                    // SliverGridDelegateWithMaxCrossAxisExtent(
                    //
                    //      maxCrossAxisExtent: 150,
                    //     mainAxisSpacing: 15,
                    //     crossAxisSpacing: 15,
                    // childAspectRatio: .8/2),
                    SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 1.30 / 2,
                ),
                itemCount: Seeds.length,
                itemBuilder: (BuildContext ctx, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 220,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            image: DecorationImage(
                              image: AssetImage(
                                Seeds[index].image,
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Text(
                        Drieds[index].text,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        Drieds[index].text1,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.yellow.shade800,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: ElevatedButton(
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => const Navi()),
                            // );
                          },
                          child: Text(
                            "Add To Cart",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffd3a32b),
                            shape: RoundedRectangleBorder(),
                          ),
                        ),
                      ),
                    ],
                  );
                }),
          ),
        ),
      ),
    );
  }
}

///File 4 SEEDS
class Seed {
  String? image;
  String? text;
  String? text1;

  Seed(this.image, this.text, this.text1);
}

List Seeds =
    SeedDat.map((e) => Seed(e['image'], e['text'], e['text1'])).toList();
var SeedDat = [
  {
    "image": "assets/pumkin.png",
    "text": " Pumkin Seed",
    "text1": " From ₹190gm"
  },
  {'image': 'assets/flax.png', 'text': 'Flax Seed ', "text1": "From ₹99"},
  {'image': 'assets/pumkin.png', 'text': 'Pumkin Seed ', "text1": "From ₹99"},
  {'image': 'assets/flax.png', 'text': 'Flax Seed ', "text1": "From ₹99"},
  {
    "image": "assets/pumkin.png",
    "text": " Pumkin Seed",
    "text1": " From ₹190gm"
  },
  {'image': 'assets/flax.png', 'text': 'Flax Seed ', "text1": "From ₹99"},
  {'image': 'assets/pumkin.png', 'text': 'Pumkin Seed ', "text1": "From ₹99"},
  {'image': 'assets/flax.png', 'text': 'Flax Seed ', "text1": "From ₹99"},
];
