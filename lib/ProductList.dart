import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Down extends StatefulWidget {
  const Down({Key? key}) : super(key: key);

  @override
  State<Down> createState() => _DownState();
}

class _DownState extends State<Down> {

  String dropdownvalue = 'Almond';

  // List of items in our dropdown menu
  var items = [
    'Almond',
    'Cashew',
    'Pistachio',
    'Walnuts',
    'Dry Fruits',
    'Spices',
    'HomeMade Chocolates'
  ];
  @override
  Widget build(BuildContext context) {







    return  Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            DropdownButton(



              value: dropdownvalue,


              icon: const Icon(Icons.keyboard_arrow_down),


              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),

              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}