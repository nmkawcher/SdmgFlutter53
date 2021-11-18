import 'dart:core';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  double height = 0.0;
  double width = 0.0;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Body(height, width),
    ));
  }
}

class Body extends StatelessWidget {
  late var height;
  late var width;

  Body(this.height, this.width, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            children: [
              Image.asset(
                "assets/images/unlock.png",
                width: width,
                height: height / 2.2,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    prefixIcon: Icon(Icons.email),
                    hintText: "ex@gmail.com",
                    labelText: "Email",
                    floatingLabelBehavior: FloatingLabelBehavior.auto),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    prefixIcon: Icon(Icons.lock),
                    hintText: "ex.12gg",
                    labelText: "Password",
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    suffixIcon: Icon(Icons.visibility)),
                obscureText: true,
              ),
              SizedBox(height: 20,),
              Align(
                alignment:Alignment.centerRight,
                child: Text("Forget Password",style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),),
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Text("Login")
              ),
              SizedBox(
                height: 20,
              ),
              Text("Don't have an account?\nRegister",textAlign: TextAlign.center)
            ],
          ),
        ),
      ),
    );
  }
}
