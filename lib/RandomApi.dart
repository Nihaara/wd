import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:wd/Model/1Api.dart';

import 'Model/AlbumCalss.dart';

class Ruser extends StatefulWidget {
  const Ruser({Key? key}) : super(key: key);

  @override
  State<Ruser> createState() => _RuserState();
}

class _RuserState extends State<Ruser> {
  Future<List<Randomuser>> fetchRandomUser() async {
    var response = await http.get(Uri.parse('https://randomuser.me/api/'));
    //print(response.body);
    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['results'];
      return data.map((y) => Randomuser.fromJson(y)).toList();
    } else {
      throw Exception('Failed to load album');
    }
  }

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Randomuser>>(
        future: fetchRandomUser(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Randomuser> users = snapshot.data as List<Randomuser>;
            return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 75,
                    color: Colors.white,
                    child: Center(
                      child: Text(snapshot.data![index].toString()),
                    ),
                  );
                });
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }

          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
