import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is my app'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('main body',
        style: TextStyle(
          fontSize: 30,
          color: Colors.red,
        ),
        ),
        Text('main body',
          style: TextStyle(
            fontSize: 30,
            color: Colors.red,
          ),
        ),
        Text('main body',
          style: TextStyle(
            fontSize: 30,
            color: Colors.red,
          ),
        ),
        Text('main body',
          style: TextStyle(
            fontSize: 30,
            color: Colors.red,
          ),
        ),
        Text('main body',
          style: TextStyle(
            fontSize: 30,
            color: Colors.red,
          ),
        ),
        Text('main body',
          style: TextStyle(
            fontSize: 30,
            color: Colors.red,
          ),
        ),
        Text('main body',
          style: TextStyle(
            fontSize: 30,
            color: Colors.red,
          ),
        ),
        Text('main body',
          style: TextStyle(
            fontSize: 30,
            color: Colors.red,
          ),
        ),
        Text('main body',
          style: TextStyle(
            fontSize: 30,
            color: Colors.red,
          ),
        ),
        Text('main body',
          style: TextStyle(
            fontSize: 30,
            color: Colors.red,
          ),
        ),
        Text('main body',
          style: TextStyle(
            fontSize: 30,
            color: Colors.red,
          ),
        ),
        Text('main body',
          style: TextStyle(
            fontSize: 30,
            color: Colors.red,
          ),
        ),
        Text('main body',
          style: TextStyle(
            fontSize: 30,
            color: Colors.red,
          ),
        ),
        Text('main body',
          style: TextStyle(
            fontSize: 30,
            color: Colors.red,
          ),
        ),
        Text('main body',
          style: TextStyle(
            fontSize: 30,
            color: Colors.red,
          ),
        ),
        Text('main body',
          style: TextStyle(
            fontSize: 30,
            color: Colors.red,
          ),
        )
      ]
      ),

      // Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   children: [
      //     Text('This Is Main Body',
      //     style: TextStyle(
      //
      // Text('  This is main body',
      // style: TextStyle(
      //     fontSize: 50,
      //   color: Colors.green,
      //   fontWeight: FontWeight.bold,
      // ),
    // ),
      )
      )
    );

  }
}
