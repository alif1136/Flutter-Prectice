import 'package:alif/Button.dart';
import 'package:alif/Grid_View.dart';
import 'package:alif/List_and_Others.dart';
import 'package:alif/Stack.dart';
//import 'package:alif/Home%20page.dart';
import 'package:flutter/material.dart';
import 'package:alif/home.dart';
import 'package:alif/Input.dart';

class myapp extends StatelessWidget{
  myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      //home: Input(),
      //home:List_and_others(),
      //home: button(),
      //home: Home(),
      //home: Grid_View(),
      home: Stack_View(),
    );
  }
}