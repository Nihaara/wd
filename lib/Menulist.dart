import 'package:flutter/material.dart';

import 'ProductList.dart';
import 'Two.dart';
import 'one.dart';

class MenuList extends StatefulWidget {
  const MenuList({Key? key}) : super(key: key);

  @override
  State<MenuList> createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {
  String dropdownValue = "Almond";
  var items = [
    'Almond',
    'Cashew',
    'Pistachio',
    'Walnuts',
    'Exotic Nuts'
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
      'Spices',
      'HomeMade Chocolates'
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome To Winner Dates And Nuts'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );

    //   Drawer(
    //   child: ListView(
    //     padding: EdgeInsets.zero,
    //     children: <Widget>[
    //       DrawerHeader(
    //         child: Text(
    //           'Welcome To Winner Dates And Nuts ',
    //           style: TextStyle(color: Colors.black, fontSize: 25),
    //         ),
    //         // decoration: BoxDecoration(
    //         //     color: Colors.white,
    //         //     image: DecorationImage(
    //         //         fit: BoxFit.fill,
    //         //         image: AssetImage('assets/logo1.png'),)),
    //       ),
    //       ListTile(
    //         leading: Icon(Icons.input),
    //         title: Text('Home'),
    //         onTap: () => {
    // {
    // Navigator.push(
    // context,
    // MaterialPageRoute(builder: (context) => MainPage()),
    // ),
    // },
    //         },
    //       ),
    //       ListTile(
    //         title: Text('Products'),
    //         onTap: () => {
    //
    //         },
    //         leading: Column(
    //           children: [
    //             // Icon(Icons.arrow_drop_down),
    //             DropdownButton<String>(
    //
    //               value: dropdownValue,
    //               icon: const Icon(Icons.arrow_downward,size: 15,),
    //               elevation: 1,
    //               style: const TextStyle(color: Colors.black87),
    //               // underline: Container(
    //               //   height: 10,
    //               //   width: 20,
    //               //   color: Colors.black87,
    //               // ),
    //               onChanged: (String? value) {
    //                 // This is called when the user selects an item.
    //                 setState(() {
    //                   dropdownValue = value!;
    //                 });
    //               },
    //               items: list.map<DropdownMenuItem<String>>((String value) {
    //                 return DropdownMenuItem<String>(
    //                   value: value,
    //                   child: Padding(
    //                     padding: const EdgeInsets.all(8.0),
    //                     child: Text(value,style: TextStyle(
    //                       fontSize: 16,fontWeight: FontWeight.normal,color: Colors.black,
    //                     ),),
    //                   ),
    //                 );
    //               }).toList(),
    //
    //
    //
    //               // ],
    //             ),
    //
    //
    //           ],
    //         ),
    //
    //       ),
    //       ListTile(
    //         leading: Icon(Icons.verified_user),
    //         title: Text('Profile'),
    //         onTap: () =>
    // {
    // Navigator.push(
    // context,
    // MaterialPageRoute(builder: (context) => Logpage()),
    // ),
    // },
    //       ),
    //       ListTile(
    //         leading: Icon(Icons.settings),
    //         title: Text('Settings'),
    //         onTap: () => {Navigator.of(context).pop()},
    //       ),
    //       ListTile(
    //         leading: Icon(Icons.border_color),
    //         title: Text('Feedback'),
    //         onTap: () => {Navigator.of(context).pop()},
    //       ),
    //       ListTile(
    //         leading: Icon(Icons.exit_to_app),
    //         title: Text('Logout'),
    //         onTap: () => {Navigator.of(context).pop()},
    //       ),
    //     ],
    //   ),
    // );

    ///////
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text("Welcome To Winner Dates And Nuts",style: TextStyle(
    //       color: Colors.black,fontSize: 15,
    //     ),),
    //     backgroundColor: Colors.white,
    //     leading:  IconButton(onPressed: () => {},
    //         icon: Icon(Icons.person,color: Colors.black,)),
    //     actions: <Widget>[
    //       IconButton(
    //         icon: Icon(
    //           Icons.close,
    //           color: Colors.black,
    //         ),
    //         onPressed: () {
    //           // do something
    //         },
    //       )
    //     ],
    //   ),
    //   body: Container(
    //     height: double.infinity,
    //     width: 600,
    //     child: Column(
    //       children: [
    //
    //     Drawer(
    //     child: ListView(
    //     padding: EdgeInsets.zero,
    //       children: <Widget>[
    //         DrawerHeader(
    //           child: Text(
    //             ' menu',
    //             style: TextStyle(color: Colors.red, fontSize: 25),
    //           ),
    //           decoration: BoxDecoration(
    //               color: Colors.green,
    //               image: DecorationImage(
    //                   fit: BoxFit.fill,
    //                   image: AssetImage('assets/images/cover.jpg'))),
    //         ),
    //         ListTile(
    //           leading: Icon(Icons.input),
    //           title: Text('Welcome'),
    //           onTap: () => {},
    //         ),
    //         ListTile(
    //           leading: Icon(Icons.verified_user),
    //           title: Text('Profile'),
    //           onTap: () => {Navigator.of(context).pop()},
    //         ),
    //         ListTile(
    //           leading: Icon(Icons.settings),
    //           title: Text('Settings'),
    //           onTap: () => {Navigator.of(context).pop()},
    //         ),
    //         ListTile(
    //           leading: Icon(Icons.border_color),
    //           title: Text('Feedback'),
    //           onTap: () => {Navigator.of(context).pop()},
    //         ),
    //         ListTile(
    //           leading: Icon(Icons.exit_to_app),
    //           title: Text('Logout'),
    //           onTap: () => {Navigator.of(context).pop()},
    //         ),
    //       ],
    //     ),
    // ),
    //
    //
    //       ],
    //     ),
    //   ),
    //
    // );
  }
}
