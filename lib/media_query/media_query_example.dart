import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MediaQueryExample extends StatefulWidget {
  MediaQueryExample({Key? key}) : super(key: key);

  @override
  _MediaQueryExampleState createState() => _MediaQueryExampleState();
}

class _MediaQueryExampleState extends State<MediaQueryExample> {
  double height=0.0;
  double width=0.0;
  bool isLandscafe=false;

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp
    ]);
  }
  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    height=MediaQuery.of(context).size.height;
    width=MediaQuery.of(context).size.width;
    MediaQuery.of(context).orientation==Orientation.portrait?isLandscafe=false:isLandscafe=true;
    return Scaffold(
      appBar: AppBar(
        title: Text("Media Query Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            isLandscafe?GestureDetector(
              onTap: (){
                print("is landscafe : $isLandscafe");
              },
              child: Container(
                height: height*.75,
                width: width*.75,
                color: Colors.deepOrange,
              ),
            ):GestureDetector(
              onTap: (){
                print("is landscafe : $isLandscafe");
              },
              child: Container(
                height: height*.5,
                width: width*.5,
                color: Colors.teal,

              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 40,
              width: 40,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
