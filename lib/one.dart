import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Menulist.dart';

class Logpage extends StatefulWidget {
  const Logpage({Key? key}) : super(key: key);

  @override
  State<Logpage> createState() => _LogpageState();
}

class _LogpageState extends State<Logpage> {
  bool aOperatorClicked = false;

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
              MaterialPageRoute(builder: (context) => MenuList()),
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
      body: Column(
        children: [
          Text(
            "Customer Login",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 300,
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  inputFormatters: <TextInputFormatter>[
                    // FilteringTextInputFormatter.,
                    LengthLimitingTextInputFormatter(100),
                  ],
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return "Enter Username ";
                    }
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    labelText: "Email Id",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.greenAccent, width: 1.0),
                    ),
                    contentPadding: EdgeInsets.only(top: 20),
                  ),
                  //d
                  // Icon(Icons.person),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    // FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(10)
                  ],
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return "Please Enter Your Password ";
                    }
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    suffixIcon: Icon(Icons.remove_red_eye_rounded),
                    labelText: "Password",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.greenAccent, width: 1.0),
                    ),
                    contentPadding: EdgeInsets.only(top: 20),
                  ),
                  //d
                  // Icon(Icons.person),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 50,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => const Navi()),
                      // );
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffd3a32b),
                      shape: RoundedRectangleBorder(),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: double.infinity,
              color: Color(0xffd3a32b),
              child: TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 15),
                ),
                onPressed: () {},
                child: Text(
                  'Create A New Account',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 40,
                      width: 190,
                      // color: Colors.red,

                      child: ElevatedButton(
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => const Navi()),
                          // );
                        },
                        child: Text(
                          "Google",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey.shade700,
                          shape: RoundedRectangleBorder(),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 40,
                      width: 190,
                      child: ElevatedButton(
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => const Navi()),
                          // );
                        },
                        child: Text(
                          "Facebook",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey.shade700,
                          shape: RoundedRectangleBorder(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 40,
                      width: 190,
                      child: ElevatedButton(
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => const Navi()),
                          // );
                        },
                        child: Text(
                          "Twitter",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey.shade700,
                          shape: RoundedRectangleBorder(),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 40,
                      width: 190,
                      child: ElevatedButton(
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => const Navi()),
                          // );
                        },
                        child: Text(
                          "Amazon",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey.shade700,
                          shape: RoundedRectangleBorder(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 15),
              ),
              onPressed: () {
                setState(() {
                  aOperatorClicked = (true);
                });
              },
              child: Column(
                children: [
                  Text(
                    'Reset Passwors',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                    ),
                  ),
                  Visibility(
                    visible: aOperatorClicked,
                    child: Column(

                      children: [
                        Text(
                          "We will send you an  Email to reset your Password",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ],
                    ),

                  )
                ],
              ),

              // Visibility(
              //   visible: true,
              //   child: Text(
              //     'Reset Passwors',
              //     style: TextStyle(
              //       color: Colors.white,
              //       fontSize: 25,
              //     ),
              //   ),
              // ),
            ),
          ),
        ],
      ),
    );

    // backgroundColor:

    //   body: Column(
    //     children: [
    //
    //
    //
    //     ],
    // ),
  }
}

class Asssss extends StatefulWidget {
  const Asssss({Key? key}) : super(key: key);

  @override
  State<Asssss> createState() => _AsssssState();
}

class _AsssssState extends State<Asssss> {
  bool _show = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                setState(() {
                  _show = true;
                });
              },
              child: Text("go")),
          Visibility(
            visible: _show,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.cyan,
            ),
          ),
        ],
      ),
    );
  }
}
