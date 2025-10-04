import 'package:alif/Page-2.dart';
import 'package:flutter/material.dart';

class Navigation_Test extends StatelessWidget {
  final name;
  const Navigation_Test({super.key,required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Navigation Test View'),
          backgroundColor: Colors.lightGreen,
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Test view'),
             Text(name),
             ElevatedButton(onPressed: (){
            //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Page_2()));
             //Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Page_2()),(route)=>false);
               Navigator.push
               (context, MaterialPageRoute(builder: (context)=>Page_2()));
            },
                child: Text('Page-2')),
            SizedBox(height: 20,),
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
