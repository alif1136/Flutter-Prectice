import 'package:flutter/material.dart';

class responsiveness extends StatelessWidget {
  const responsiveness({super.key});

  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;
    final bool isTab = screensize.width > 600;
    final Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
     appBar: AppBar(
       title: Text('responsivenss'),
       backgroundColor: Colors.purple,
     ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
      child: Column(
        children: [
          Text('Device is ${orientation} Mode',
          style: TextStyle(
            fontSize: 0.04*screensize.height,
          ),
          ),
          orientation == Orientation.landscape ?
          Text('This is in Landscap mode',
          style: TextStyle(
            fontSize: 30,
            color: Colors.amber
          ),
          ):
              SizedBox(height: 10,),
          orientation == Orientation.portrait ?
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.phone_android_rounded,size: 50,),
              Icon(Icons.tablet,size: 50,),
              Icon(Icons.desktop_windows,size: 50,),
              Icon(Icons.apple,size: 50,),
            ],
          ):
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.phone_android_rounded,size: 50,),
              Icon(Icons.tablet,size: 50,),
              Icon(Icons.desktop_windows,size: 50,),
              Icon(Icons.apple,size: 50,),
            ],
          ),
          Text('Fixed Size'),
          SizedBox(height: 10,),
          Container(
            width: 150,
            height: 150,
            color: Colors.lightGreenAccent,
            alignment: Alignment.center,
            child: Text('150x150',
              style: TextStyle(
                color: Colors.black,
                fontSize: 10
              ),
            ),
          ),
          Text('Aspect ratio'),
          SizedBox(height: 10,),
          AspectRatio(aspectRatio: 16/9,
          child: Container(
            color: Colors.brown,
          ),
          ),
          SizedBox(height: 10,),
          Container(
            color: Colors.deepPurple,
            height: screensize.width,
            width: screensize.height,
          ),
          SizedBox(height: 10,),
          Text('this is Text',
            style: TextStyle(
                fontSize: screensize.width > 600 ? 32 : 18
            ),
          ),
          Text('this is Text',
            style: TextStyle(
                fontSize: 0.06*screensize.height
            ),
          ),
          SizedBox(height: 10,),

          FractionallySizedBox(
            widthFactor: 0.8,
            child: Container(
              height: 60,
              color: Colors.deepOrange,
            ),
          ),
          SizedBox(height: 10,),
          Text('Adaptive layout ${isTab ? 'Tablet' : 'Mobile'}'),
          isTab ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.phone_android_rounded,size: 50,),
              Icon(Icons.tablet,size: 50,),
              Icon(Icons.desktop_windows,size: 50,),
              Icon(Icons.apple,size: 50,),
            ],
          ):
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.phone_android_rounded,size: 50,),
              Icon(Icons.tablet,size: 50,),
              Icon(Icons.desktop_windows,size: 50,),
              Icon(Icons.apple,size: 50,),
            ],
          )
        ],
      ),
      ),
      )
    );
  }
}
