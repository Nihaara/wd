import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'AlbumAPI.dart';
import 'Hampers.dart';
import 'Menulist.dart';
import 'Model/AI.dart';
import 'Model/CatApi.dart';
import 'Model/orgentryapi.dart';
import 'RandomApi.dart';
import 'Two.dart';
import 'WdProducts.dart';
import 'one.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => ResponsiveWrapper.builder(child,
          maxWidth: 1200,
          minWidth: 480,
          defaultScale: true,
          breakpoints: [
            ResponsiveBreakpoint.resize(600, name: MOBILE),
            ResponsiveBreakpoint.resize(600, name: TABLET),
            ResponsiveBreakpoint.autoScale(600, name: TABLET),
            ResponsiveBreakpoint.autoScale(1200, name: DESKTOP),
          ],
          background: Container(color: Color(0xFFF5F5F5))),
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:

         // Dates(),
         // Nuts(),
       //  Fruits(),
       //  DrySeed(),
       //  Gift(),
       // FirstScreen()
       // Ruser(),
      //Pub(),
      // OrgApi(),
      //  User(),
      //    Logpage(),
      MainPage(),
      //   MenuList(),
      // Asssss(),
      // AlbumAPI(),
      // Logpage(),

      //  MenuList(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuList(),
      appBar: AppBar(
        title: Text('Side menu'),
      ),
      body: Center(
        child: Text('Side Menu Tutorial'),
      ),
    );
  }
}
// import 'package:carousel_slider/carousel_slider.dart';
// import 'dart:async';
// import 'package:flutter/material.dart';
//
// import 'Menulist.dart';
// import 'one.dart';
//
// void main() { runApp(MyApp());}
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   @override
//   SplashScreenState createState() => SplashScreenState();
// }
// class SplashScreenState extends State<MyHomePage> {
//   @override
//   void initState() {
//     super.initState();
//     Timer(Duration(seconds: 3),
//             ()=>Navigator.pushReplacement(context,
//             MaterialPageRoute(builder:
//                 (context) => HomeScreen()
//             )
//         )
//     );
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 350,
//       width: 800,
//       decoration: BoxDecoration(
//         image: DecorationImage(
//             image: AssetImage('assets/logo1.png'),
//             fit: BoxFit.cover
//         ),
//       ),
//     );
//   }
// }
// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Center(
//           child: Text(
//             'Winner Dates And Nuts',
//             style: TextStyle(color: Colors.black, fontSize: 18),
//           ),
//         ),
//         elevation: 0,
//         backgroundColor: Colors.transparent,
//         leading: IconButton(
//
//
//             onPressed: () => {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => MenuList()),
//               ),
//             },
//             icon: Icon(
//               Icons.menu,
//               color: Colors.black,
//             )),
//         actions: [
//           IconButton(
//               onPressed: () => {},
//               icon: Icon(
//                 Icons.search,
//                 color: Colors.black,
//               )),
//           IconButton(
//               onPressed: () => {},
//               icon: Icon(
//                 Icons.shopping_cart_outlined,
//                 color: Colors.black,
//               )),
//         ],
//       ),
//       body:
//
//       ListView(
//         children: [
//           CarouselSlider.builder(
//               options: CarouselOptions(
//                 height: 350,
//                 aspectRatio: 16 / 9,
//                 viewportFraction: 1,
//                 initialPage: 5,
//                 enableInfiniteScroll: true,
//                 reverse: false,
//                 autoPlay: true,
//                 autoPlayInterval: Duration(seconds: 3),
//                 autoPlayAnimationDuration: Duration(milliseconds: 800),
//                 autoPlayCurve: Curves.linearToEaseOut,
//                 enlargeCenterPage: true,
//                 enlargeFactor: 2,
//                 //onPageChanged: callbackFunction,
//                 scrollDirection: Axis.horizontal,
//               ),
//               itemCount: 5,
//               itemBuilder:
//                   (BuildContext context, int itemIndex, int pageViewIndex) {
//                 return GestureDetector(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => const one()),
//                     );
//                   },
//                   child: Container(
//                     decoration: BoxDecoration(
//                       shape: BoxShape.rectangle,
//                       color: Colors.grey,
//                       image: DecorationImage(
//                         image: AssetImage("assets/logo1.png"),
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                 );
//               }),
//           Column(
//             children: [
//               Text("Shop By Category",style: TextStyle(
//                 color: Colors.black,
//               ),),
//             ],
//           ),
//           Container(
//             height: 450,
//             // width: 200,
//
//             child: GridView.builder(
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 3,
//                   // crossAxisSpacing: 15,
//                   // mainAxisSpacing: 2,
//                   childAspectRatio: 1.8/ 2,
//                 ),
//                 itemCount: 9,
//                 itemBuilder: (BuildContext ctx, index) {
//                   return Column(
//                     children: [
//                       Container(
//                         height: 100,
//                         width: 100,
//                         alignment: Alignment.center,
//                         decoration: BoxDecoration(
//                             color: Colors.black,
//                             image: const DecorationImage(
//                               image: AssetImage("assets/logo1.png",),
//                               fit: BoxFit.fill,
//                             ),
//                             borderRadius: BorderRadius.circular(10)),
//                       ),
//                       Text("Nuts"),
//                     ],
//                   );
//                 }
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

