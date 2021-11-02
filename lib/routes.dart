import 'dart:js';

import 'package:flutter/material.dart';
import 'package:sdmgflutter53/route_example/first_page.dart';
import 'package:sdmgflutter53/route_example/second_page.dart';
import 'package:sdmgflutter53/route_example/third_page.dart';

final Map<String,WidgetBuilder>routes={
  FirstPage.routesName:(context)=>FirstPage(),
  SecondPage.routesName:(context)=>SecondPage(),
  ThirdPage.routesName:(context)=>ThirdPage(),
};
/*
Map<String,WidgetBuilder>nameOfTheMap={
"key1":value,
"key2":data2,
}
 */