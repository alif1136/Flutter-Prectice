import 'package:alif/Button.dart';
import 'package:alif/City_widget/City_Wgt.dart';
import 'package:alif/Grid_View.dart';
import 'package:alif/List_and_Others.dart';
import 'package:alif/Navigation_Test.dart';
import 'package:alif/Stack.dart';
import 'package:alif/Tab_and_Drawer.dart';
import 'package:alif/alert.dart';
import 'package:alif/bottom_navigation.dart';
//import 'package:alif/Home%20page.dart';
import 'package:flutter/material.dart';
import 'package:alif/home.dart';
import 'package:alif/Input.dart';

class myapp extends StatelessWidget{
  myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.cyanAccent,
        primarySwatch: Colors.lightGreen,
        scaffoldBackgroundColor: Colors.white,

          elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red,
          foregroundColor: Colors.green,
            shape: RoundedSuperellipseBorder(
              borderRadius: BorderRadius.circular(10),
            )
      )
      ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                  color: Colors.blue,width: 2
              )
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(
                color: Colors.pink,width: 3
            ),
          ),
          hintStyle: TextStyle(
            color: Colors.deepPurpleAccent
          ),
        ),
        textTheme: TextTheme(
          bodyLarge: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
          titleMedium: TextStyle(fontSize: 20)
        ),
        cardTheme: CardThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)
          )
        )
      ),
      //darkTheme: ThemeData.dark(),
      //themeMode: ThemeMode.system,
      title: 'My App',
      //home: Input(),
      //home: List_and_others(),
      //home: button(),
      //home: Home(),
      //home: Grid_View(),
      //home: Stack_View(),
      //home: alert(),
      home: tab_and_drawer(),
      initialRoute: '/bottom_navigation',
      //home: Navigation_Test(name: ''),
      routes:  {
        '/home' : (context)=> City_Widget(img: '', title: '', rating: '',),
        '/home-2' : (context)=>alert(),
        '/bottom_navigation': (context)=> bottom_navigation(),
      },
    );
  }
}