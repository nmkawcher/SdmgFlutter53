import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  static final String routesName='/third_page';
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Screen"),
      ),
      body: Center(
        child: OutlinedButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: Text("Go Back"),
        ),
      ),
    );
  }
}
