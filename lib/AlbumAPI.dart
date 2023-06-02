import 'dart:convert';


import 'package:flutter/material.dart';

import 'Model/AlbumCalss.dart';
import 'package:http/http.dart' as http;

class AlbumAPI extends StatefulWidget {
  const AlbumAPI({Key? key}) : super(key: key);

  @override
  State<AlbumAPI> createState() => _AlbumAPIState();
}

class _AlbumAPIState extends State<AlbumAPI> {
  Future<Album> FetchAlbum() async {
    var resp = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/albums/1"));
    var data = jsonDecode(resp.body);
    return Album.fromJson(data);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //FetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Fetch Data Example'),
        ),
        body: Center(
          child: FutureBuilder<Album>(
            future: FetchAlbum(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data!.title.toString());
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }

              // By default, show a loading spinner.
              return const CircularProgressIndicator();
            },
          ),
        ));
  }
}
