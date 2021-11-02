import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessengerUiScreen extends StatelessWidget {
  const MessengerUiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(10),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/images/mango.png")
          ),
        ),
        title: Text("Chats",style: TextStyle(
          color: Colors.black
        ),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.camera,color: Colors.black,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.edit,color: Colors.black,)),
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Container(
                height: 80,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/images/mango.png"),

                        ),
                        SizedBox(height: 2,),
                        Text("Sabbir",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                        ),)
                      ],
                    ),
                   SizedBox(width: 10,),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/images/mango.png"),

                        ),
                        SizedBox(height: 2,),
                        Text("Sabbir",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),)
                      ],
                    ),
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/images/mango.png"),

                        ),
                        SizedBox(height: 2,),
                        Text("Sabbir",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),)
                      ],
                    ),
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/images/mango.png"),

                        ),
                        SizedBox(height: 2,),
                        Text("Sabbir",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),)
                      ],
                    ),
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/images/mango.png"),

                        ),
                        SizedBox(height: 2,),
                        Text("Sabbir",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),)
                      ],
                    ),
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/images/mango.png"),

                        ),
                        SizedBox(height: 2,),
                        Text("Sabbir",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),)
                      ],
                    ),
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/images/mango.png"),

                        ),
                        SizedBox(height: 2,),
                        Text("Sabbir",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),)
                      ],
                    ),
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/images/mango.png"),

                        ),
                        SizedBox(height: 2,),
                        Text("Sabbir",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),)
                      ],
                    ),
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/images/mango.png"),
                        ),
                        SizedBox(height: 2,),
                        Text("Sabbir",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),)
                      ],
                    ),
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/images/mango.png"),

                        ),
                        SizedBox(height: 2,),
                        Text("Sabbir",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),)
                      ],
                    ),
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/images/mango.png"),

                        ),
                        SizedBox(height: 2,),
                        Text("Sabbir",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),)
                      ],
                    ),
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/images/mango.png"),

                        ),
                        SizedBox(height: 2,),
                        Text("Sabbir",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),)
                      ],
                    ),
                    SizedBox(width: 10,),
                  ],
                ),
              ),
             Expanded(
                  flex: 1,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 100,
                    itemBuilder: (BuildContext context, int index) =>Row(
                      children: [
                        CircleAvatar(
                          backgroundImage:AssetImage("assets/images/mango.png"),
                        ),
                        SizedBox(width: 20,),
                        Column(
                          children: [
                            Text("Abdullah",style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.black
                            ),),
                            Text("Abdullah",style: TextStyle(
                                fontSize: 18,
                                color: Colors.black
                            ),),

                          ],
                        ),


                      ],
                    ),



                  )
              )
            ],
          ),
        ),
      ),
      /*backgroundColor: Colors.white,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [

              CircleAvatar(child: Icon(Icons.home),),
              Expanded(
                flex: 1,
                 child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                  Container(
                    height: 100,
                    width: 120,
                    color: Colors.green,
                    margin: EdgeInsets.all(10),
                  ),
                  Container(
                    height: 100,
                    width: 200,
                    color: Colors.green,
                    margin: EdgeInsets.all(10),
                  ),
                  Container(
                    height: 100,
                    width: 200,
                    color: Colors.green,
                    margin: EdgeInsets.all(10),
                  ),
                  Container(
                    height: 100,
                    width: 200,
                    color: Colors.green,
                    margin: EdgeInsets.all(10),
                  ),
                  Container(
                    height: 100,
                    width: 200,
                    color: Colors.green,
                    margin: EdgeInsets.all(10),
                  ),
                  Container(
                    height: 100,
                    width: 200,
                    color: Colors.green,
                    margin: EdgeInsets.all(10),
                  ),
                  Container(
                    height: 100,
                    width: 200,
                    color: Colors.green,
                    margin: EdgeInsets.all(10),
                  ),
                  ],
              ),
               ),
            Expanded( flex:8,child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                Container(
                  height: 100,
                  color: Colors.green,
                  margin: EdgeInsets.all(10),
                ),
                Container(
                  height: 100,
                  width: 200,
                  color: Colors.green,
                  margin: EdgeInsets.all(10),
                ),
                Container(
                  height: 100,
                  width: 200,
                  color: Colors.green,
                  margin: EdgeInsets.all(10),
                ),
                Container(
                  height: 100,
                  width: 200,
                  color: Colors.green,
                  margin: EdgeInsets.all(10),
                ),
                Container(
                  height: 100,
                  width: 200,
                  color: Colors.green,
                  margin: EdgeInsets.all(10),
                ),
                Container(
                  height: 100,
                  width: 200,
                  color: Colors.green,
                  margin: EdgeInsets.all(10),
                ),
                Container(
                  height: 100,
                  width: 200,
                  color: Colors.green,
                  margin: EdgeInsets.all(10),
                ),
              ],
            ),)

          ],
        ),
      ),*/
    );
  }
}
