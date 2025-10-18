
import 'package:alif/Button.dart';
import 'package:alif/City_widget/City_Wgt.dart';
import 'package:alif/Grid_View.dart';
import 'package:alif/List_and_Others.dart';
import 'package:alif/Navigation_Test.dart';
import 'package:alif/Stack.dart';
import 'package:alif/Tab_and_Drawer.dart';
import 'package:alif/alert.dart';
import 'package:alif/bottom_navigation.dart';
import 'package:alif/expand_f.dart';
import 'package:alif/responsive_package.dart';
import 'package:alif/responsiveness.dart';
//import 'package:alif/Home%20page.dart';
import 'package:flutter/material.dart';
import 'package:alif/home.dart';
import 'package:alif/Input.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class myapp extends StatelessWidget{
  myapp({super.key});

  @override
  Widget build(BuildContext contex) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,

        builder: (_, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(

                brightness: Brightness.light,
                primaryColor: Colors.deepPurple,
                primarySwatch: Colors.teal,

                elevatedButtonTheme: ElevatedButtonThemeData(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)))),
                inputDecorationTheme: InputDecorationTheme(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),

                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.grey, width: 1.5)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            color: Colors.orange, width: 1.5)),

                    hintStyle: TextStyle(
                        color: Colors.deepPurple
                    )
                ),

                textTheme: TextTheme(
                    bodyLarge: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                    titleMedium: TextStyle(fontSize: 16)
                ),

                cardTheme: CardThemeData(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),

                )

            ),
            darkTheme: ThemeData.dark(),
            themeMode: ThemeMode.system,
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
            //home: tab_and_drawer(),
            //home: responsiveness(),
            //home: Expand_f(),
            home: responsive_package(),
            //initialRoute: '/bottom_navigation',
            //home: Navigation_Test(name: ''),
            // routes:  {
            //   '/home' : (context)=> City_Widget(img: '', title: '', rating: '',),
            //   '/home-2' : (context)=>alert(),
            //   '/bottom_navigation': (context)=> bottom_navigation(),
            // },
          );
        }
    );
  }
}