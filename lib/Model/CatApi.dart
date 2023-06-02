import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';

import 'AlbumCalss.dart';
class Catapi extends StatefulWidget {
  const Catapi({Key? key}) : super(key: key);

  @override
  State<Catapi> createState() => _CatapiState();
}

class _CatapiState extends State<Catapi> {
  Future<Cat> fetchCat() async{
    final response =await http.get (Uri.parse('https://catfact.ninja/fact'));
    print(response.body);
        if(response.statusCode==200){

          return Cat.fromJson(jsonDecode(response.body));
        }
        else{
          throw Exception('Failed to Load Cat');
        }
  }
    @override
  void initState(){
    super.initState();
    //futureCat =fetchCat();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<Cat>(
          future: fetchCat(),
          builder: (context,snapshot){
            if(snapshot.hasData){
              return Column(
                children: [
                  Text(snapshot.data!.Fact.toString()),
                  Text(snapshot.data!.Length.toString()),
                ],
              );
            }
            else if(snapshot.hasError){
              return Text('${snapshot.error}');
            }
            return CircularProgressIndicator();
          }
        )
      ),
    );
  }
}

class Gender extends StatefulWidget {
  const Gender({Key? key}) : super(key: key);

  @override
  State<Gender> createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  Future<Gen>fetchGen() async{
    final response =await http .get(Uri.parse('https://api.genderize.io?name=luc'));
    print(response.body);
    if(response.statusCode==200){
      return Gen.fromJson(jsonDecode(response.body));
    }
    else {
      throw Exception('Failed to load Gen');
    }

  }

  @override
  void initState(){
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Center(
          child:
          FutureBuilder<Gen>(
            future: fetchGen(),
            builder: (context,snapshot){

              if (snapshot.hasData){
                return Column(
                  children: [
                    Text(snapshot.data!.Count.toString()),
                    Text(snapshot.data!.Gender .toString()),
                    Text(snapshot.data!.Name.toString()),
                    Text(snapshot.data!.Probability.toString()),

                  ],
                );

              }
              else if (snapshot.hasError){
                return Column(
                  children: [
                    Text("Error Occured"),
                    Text('${snapshot.error}'),
                  ],
                );
              }
              return Text("Loading");
            },
          ),
      ),
    );
  }
}

class Pub extends StatefulWidget {
  const Pub({Key? key}) : super(key: key);

  @override
  _PubState createState() => _PubState();
}

class _PubState extends State<Pub> {



  Future<List<Entries>> FetchEntries() async{
    final response =await http.get (Uri.parse('https://api.publicapis.org/entries'));

    if(response.statusCode==200){
    List data = jsonDecode(response.body)['entries'];
    return data.map((x) => Entries.fromJson(x)).toList();

    }
    else{
      throw Exception('Failed to Load Pub');
    }
  }
  @override
  void initState(){
    super.initState();

  }
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Center(
          child: FutureBuilder<List<Entries>>(
            future: FetchEntries(),
              builder: (context,snapshot){
                if (snapshot.hasData) {
                  return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 75,
                          color: Colors.white,
                          child: Center(
                            child: Text(snapshot.data![index].auth.toString()),
                          ),
                        );
                      });
                }
                else if(snapshot.hasError){
                  print(snapshot.error);
                  return Text('${snapshot.error}');
                }
                return CircularProgressIndicator();
              }
          ),
      ),
    );
  }
}

