import 'dart:convert';
import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '1Api.dart';
import '1Api.dart';

class Ram extends StatefulWidget {
  const Ram({Key? key}) : super(key: key);

  @override
  State<Ram> createState() => _RamState();
}

class _RamState extends State<Ram> {
  late Future<List<Randomuser>> _future;

  @override
  void initState() {
    super.initState();

    //_future =Randomuser();
  }

  Future<List<Randomuser>> fetchUsers() async {
    var response = await http.get(Uri.parse("https://randomuser.me/api/"));
    return (json.decode(response.body)['results'] as List)
        .map((e) => Randomuser.fromJson(e))
        .toList();
  }

  final String apiUrl = "https://randomuser.me/api/";

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: FutureBuilder<List<Randomuser>>(
          future: fetchUsers(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<Randomuser> RandomuserList =
              snapshot.data as List<Randomuser>;
              return ListView.builder(
                  itemCount: RandomuserList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Column(
                        children: [
                          Text(RandomuserList[index].results.toString()),
                        ],
                      ),
                    );
                  });
            }
            if (snapshot.hasError) {
              print(snapshot.error.toString());
              return Text('error');
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}

class Randomuser {
  List<Solution>? results;
  String? info;

  Randomuser({required this.results, this.info});

  factory Randomuser.fromJson(Map<String, dynamic> json) {
    print(json);
    return Randomuser(
      results: json['results'],
      info: json['info'].toString(),
    );
  }
}



class Solution {
  String?gender;
  Names? name;
  Location?location;
  String?email;
  Login?login;
   // Dofb?dob;
  // Registered?registered;
  int?phone;
  int?cell;
  // Ides?id;
  Picture?picture;
  Node?nat;

  Solution(
      {required this.gender, this.name, this.location, this.email, this.login, this.cell, this.picture,
         this.nat, this.phone});

  Solution.fromJson(Map<String, dynamic> json) {
    gender = json['gender'];
    name = json['name'] != null ? new Names.fromJson(json['name']) : null;
    // location = json['location'] != null
    //     ? new Location.fromJson(json['location'])
    //     : null;
    email = json['email'];
    // login = json['login'] != null ? new Login.fromJson(json['login']) : null;
    // dob = json['dob'] != null ? new Dofb.fromJson(json['dob']) : null;
    // registered = json['registered'] != null
    //     ? new Dofb.fromJson(json['registered'])
    //     : null;

    // id = json['id'] != null ? new Ides.fromJson(json['id']) : null;
    // picture =
    // json['picture'] != null ? new Picture.fromJson(json['picture']) : null;
    nat = json['nat'];
  }

}

// class Dofb {
//   int?date;
//   int?age;
//
//   Dofb({required this.age, this.date});
//
//   factory (Map<String, dynamic>Json){
//     return Dofb(
//       age: json['age'],
//       date: json['date']
//
//     );
//   }
//
//
// }

class Login {
  String?uuid;
  String?username;
  String?password;
  String?salt;
  String? md5;
  String? sha1;
  String? sha256;

  Login(
      {this.md5, this.password, this.salt, this.sha1, this.sha256, this.username, this.uuid});

  factory (Map<String, dynamic>json){
    return Login(

    );
  }


}

class Names {
  String?titel;
  String?first;
  String?last;

  Names({this.first, this.last, this.titel});

  factory Names.fromJson(Map<String, dynamic> json) {
    return Names(
      titel: json['titel'].toString(),
      first: json['first'].toString(),
      last: json['last'].toString(),

    );
  }
}

// class Location {
//   Streets? street;
//   String? city;
//   String? state;
//   String? country;
//   int? postcode;
//   Coordinates? coordinates;
//   // Timezone? timezone;
//
//   Location({this.street,
//     this.city,
//     this.state,
//     this.country,
//     this.postcode,
//     this.coordinates,
//     // this.timezone});
//
//   Location.fromJson(Map<String, dynamic> json) {
//     street =
//     json['street'] != null ? new Streets.fromJson(json['street']) : null;
//     city = json['city'];
//     state = json['state'];
//     country = json['country'];
//     postcode = json['postcode'];
//     coordinates = json['coordinates'] != null
//         ? new Coordinates.fromJson(json['coordinates'])
//         : null;
//     timezone = json['timezone'] != null
//         ? new Timezone.fromJson(json['timezone'])
//         : null;
//   }
//
//
// }

// class Streets {
//   int?number;
//   String?name;
//
//   Streets({this.number, this.name});
//
//   Streets.fromJson(Map<String, dynamic> json) {
//     number = json['number'];
//     name = json['name'];
//   }
// }


