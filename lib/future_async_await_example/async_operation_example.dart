import 'package:flutter/material.dart';

class AsyncOperationExample extends StatelessWidget {
  const AsyncOperationExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Async Operation Example"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async{
            print("first");
            print("third");
          },
          child: Text("Click"),
        ),
      ),
    );
    /* return Scaffold(
      appBar: AppBar(
        title: Text("Async Operation Example"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: ()async{



            print("first");
              var value = await myTypedFuture();
              print(value);
              print("last");
              runMyFuture();

          },
          child: Text("Click"),
        ),
      ),
    );*/
  }
}

Future<String> myTypedFuture() async {
 await Future.delayed(Duration(seconds: 5));
  print("5");
  return Future.value("second");
}
// Future
/*Future<bool> myTypedFuture() {
   Future.delayed(Duration(seconds: 5));
  return Future.error('Error from return');
}*/
// Function to call future
void runMyFuture() {
  myTypedFuture().then((value) {
    print("$value");
  }, onError: (error) {
    print(error);
  });
}


void runMyFuture2() {
  myTypedFuture().then((value) {
    print("error free value $value");
    // Run extra code here
  })
      .catchError( (error) {
    print(error);
  });
}
