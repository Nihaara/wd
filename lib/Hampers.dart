import 'package:flutter/material.dart';

import 'Two.dart';
class Gift extends StatefulWidget {
  const Gift({Key? key}) : super(key: key);

  @override
  State<Gift> createState() => _GiftState();
}

class _GiftState extends State<Gift> {
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
                itemCount: Hampers.length,
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
                                Hampers[index].image,
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Text(
                        Hampers[index].text,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
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

///file1 GIFT HAMPER
class Giftss {
  String?image;
  String?text;

  Giftss(this.text, this.image);
}
List Hampers =
GiftssDat.map((e) => Giftss(e['text'],e['image'])).toList();

var GiftssDat=[
  {'image': 'assets/hamper1.png',
  "text": " Assorted Gift Hamper"},
  {"image": "assets/hamper1.png",
    "text": " Assorted Dry Fruit Gift Hamper"},
  {"image": "assets/hamper1.png",
    "text": " Assorted Gift Hamper"},
  {"image": "assets/hamper1.png",
    "text": " Assorted Dry Fruit Gift Hamper"},
];



