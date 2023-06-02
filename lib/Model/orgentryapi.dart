import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:wd/Model/AlbumCalss.dart';

import 'CatApi.dart';

class OrgApi extends StatefulWidget {
  const OrgApi({Key? key}) : super(key: key);

  @override
  State<OrgApi> createState() => _OrgApiState();
}

class _OrgApiState extends State<OrgApi> {
  Future<List<Domain>> fetchOrgEntry() async {
    final response = await http.get(Uri.parse(
        'http://universities.hipolabs.com/search?country=United+States'));
    print(response.body);
    if (response.statusCode == 200) {
      List data = jsonDecode(response.body);
      return  data.map((x)=> Domain.fromJson(x)).toList();
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
      body: FutureBuilder<List<Domain>>(
        future: fetchOrgEntry(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 75,
                    color: Colors.white,
                    child: Center(
                      child: Text(snapshot.data![index].domains.toString()),
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

