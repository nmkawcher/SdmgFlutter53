import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http ;

Future<List<Album>> fetchAlbum() async {
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));
   /* final response=await http.get(Uri.parse("https://jsonplaceholder.typicode.com/albums"));*/
  //  print("main  response: "+response.body);
    /* if(response.statusCode==200){

     }else{
       throw Exception('Failed to load album');
     }*/
  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    List<Album>list2=[];
    List<dynamic>list=jsonDecode(response.body);
    print("after converting in dynamic list: "+list.toString());


    for(int i=0;i<list.length;i++){
    Album album=  Album.fromJson(list[i]);
    list2.add(album);
    }

   /* list.forEach((element) {

     *//* Album album=Album.fromJson(element);
      list2.add(album);*//*
    });*/

    return list2;
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class Album {
  final int userId;
  final int id;
  final String title;

  Album({
    required this.userId,
    required this.id,
    required this.title,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    int userid=json['userId'];
    int id=json['id'];
    String title=json['title'];
    return Album(
      userId: userid,
      id: id,
      title: title,
    );
  }
}



class HttpExample extends StatefulWidget {
  const HttpExample({Key? key}) : super(key: key);

  @override
  _HttpExampleState createState() => _HttpExampleState();
}

class _HttpExampleState extends State<HttpExample> {
  late Future<List<Album>> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: const Text('Fetch Data Example'),
        ),
        body: Center(
          child: FutureBuilder<List<Album>>(
            future: futureAlbum,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<Album>?list=snapshot.data;
                return ListView.builder(
                  itemCount: list!.length,
                    itemBuilder: (context,index){
                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            list[index].title,

                          ),
                        ),
                      );
                    }
                );
              }
              else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }

              // By default, show a loading spinner.
              return const CircularProgressIndicator();
            },
          ),
        ),
    );
  }
}