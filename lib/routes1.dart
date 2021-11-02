import 'package:flutter/material.dart';
import 'package:sdmgflutter53/route_example/first_page.dart';
import 'package:sdmgflutter53/route_example/second_page.dart';

final Map<String,WidgetBuilder>routes1={
  //key[routesName]:value[pagename]
  FirstPage.routesName:(context)=>FirstPage(),
  SecondPage.routesName:(context)=>SecondPage(),
};