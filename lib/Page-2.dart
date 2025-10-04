import 'package:flutter/material.dart';

class Page_2 extends StatelessWidget {
  const Page_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page-2 View'),
        backgroundColor: Colors.cyanAccent,
      ),
      body: Center(
        child: Column(
          children: [
            Text('Test view'),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            },
                child: Text('Back'))
          ],
        ),
      ),
    );
  }
}
