import 'package:flutter/material.dart';
import 'package:sdmgflutter53/e_commerce_single_product_design.dart';
import 'package:sdmgflutter53/list_view_example.dart';
import 'package:sdmgflutter53/messenger_ui.dart';
import 'package:sdmgflutter53/profile_ui.dart';
import 'package:sdmgflutter53/route_example/first_page.dart';
import 'package:sdmgflutter53/routes.dart';
import 'package:sdmgflutter53/routes1.dart';
import 'package:sdmgflutter53/text_field/simple_text_field_example.dart';

import 'listview_builder_example.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Title",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple
      ),
     // routes: {'/contact': (ctx) => Contact()},

     /* initialRoute: FirstPage.routesName,
       routes: routes,*/
      /*initialRoute: FirstPage.routesName,
     routes: routes1,*/
      home: SimpleTextFieldExample(),

    );
  }
}



/*class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.greenAccent,
          ),
          *//*  Container(
              height: 420,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
                color: Colors.white
              ),
            ),*//*
          Container(
            alignment: Alignment.topRight,
            height: 300,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.arrow_back,color: Colors.white,),
                  SizedBox(width: 100,),
                  Text("This is Title Text",style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                  ),)
                ],
              ),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
                //color: const Color(0xFF42A5F5),
                color: Colors.white
            ),
          ),
          Positioned(

              left: 12,
              top: 250,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.network("data:image/jpeg;base64,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",height: 100,width: 100,),
              ))

        ],
      ),
    );
  }
}*/








/*class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _count=0;
  void _incrementCount(){
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flutter Hello World",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You have pushed the button this many times:",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "$_count",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {_incrementCount();},
        child: const Icon(Icons.add),
      ),
    );
  }
}*/

/*class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}*/
