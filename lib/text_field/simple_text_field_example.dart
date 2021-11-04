import 'package:flutter/material.dart';

class SimpleTextFieldExample extends StatelessWidget {
  const SimpleTextFieldExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Text Field Example"),
      ),
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final emailController=TextEditingController();
  String password="";
  late bool isVisible=false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailController.addListener(() { setState(() {

    });});
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            buildEmail(),
            SizedBox(height: 10,),
            buildPassword(),
            SizedBox(height: 10,),
            buildNumberField(),
          ],
        ),
      ),
    );
  }

  Widget buildPassword(){
    return TextField(
      onChanged: (value){
        setState(() {
          this.password=value;
        });
      },
      onSubmitted:(value) {
      setState(() {
        this.password=value;
      });
      },
      decoration: InputDecoration(
        hintText: "12344@34",
        labelText: "Password",
        errorText: password.length<8?"wrong password":"",
        border: OutlineInputBorder(),
        suffixIcon: IconButton(

          icon:Icon(isVisible?Icons.visibility_off:Icons.visibility) ,
            //,
                onPressed: (){
                  setState(() {
                    isVisible=!isVisible;
                  });
                }
        ),
      ),
      obscureText: isVisible,

    );
  }
  Widget buildEmail() {
    return TextField(
      controller: emailController,
      decoration: InputDecoration(
        hintText: "ex@gmail.com",
        labelText: "Email",
        prefixIcon: Icon(Icons.email),
        suffixIcon: emailController.text.isEmpty?Container(width: 0,):
        IconButton(onPressed: (){
          emailController.clear();
        }, icon: Icon(Icons.clear))
        /*Icon(Icons.clear)*/,
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.emailAddress,
    );
  }
  Widget buildNumberField(){
    return TextField(

      decoration: InputDecoration(
        /*filled: true,
        fillColor: Colors.black,*/
        hintText: "88",
        prefixIcon: Icon(Icons.email),
        hintStyle: TextStyle(
          color: Colors.grey
        ),
        labelText: "Number",
        labelStyle: TextStyle(
          color: Colors.blue
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: BorderSide(
            color: Colors.green,
            width: 2,
            style: BorderStyle.solid
          )

        ),
        floatingLabelBehavior: FloatingLabelBehavior.always
      ),
      keyboardType: TextInputType.number,
      style: TextStyle(
        color: Colors.white
      ),
    );
  }

}

