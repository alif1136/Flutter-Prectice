import 'package:flutter/material.dart';

class button extends StatelessWidget {
  const button({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[200],
      //backgroundColor: Colors.red.withOpacity(200),
      //backgroundColor: Colors.red.shade200,
      appBar: AppBar(
        title: Text('Button',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        ),
          centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amberAccent,
                foregroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                )
              ),
              onPressed: (){}, child:Text('Press',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          )
          ),
          SizedBox(height: 50,),


          SizedBox(
            height: 150,
          width: 150,
          //width: double.infinity,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amberAccent,
                  foregroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                  )
              ),
              onPressed: (){}, child:Text('Submit',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          )
          )
          ),
          SizedBox(height: 50,),
          OutlinedButton(onPressed: (){}, child: Text('Outline Button')),


          SizedBox(height: 20,),
          TextButton(onPressed: (){}, child: Text('Read More')),

          SizedBox(height: 20,),
          Icon(
            Icons.phone_android,
            size: 70,
            color: Colors.black,
          ),
          IconButton(onPressed: (){}, icon: Icon(Icons.delete,
            size:60,
          color: Colors.greenAccent,
          )
          ),
          GestureDetector(
            onLongPress: (){
              print('Taped on long press');
            },
            onDoubleTap: (){
              print('Double Taped');
            },
            onTap: (){
              print('Taped here');
            },
          child: Text('Click Here',
          style: TextStyle(
            fontSize: 30
          ),
          ),
          ),

          InkWell(
            onTap: (){
              print('On Tap in inkwell');
            },
          child: Text('Click Here Also',
            style: TextStyle(
                fontSize: 30
            ),
          ),
          ),
        ],
      ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightGreenAccent,
        foregroundColor: Colors.black,
        onPressed: (){
        print('Click on Add');
        },
      child: Icon(Icons.add,
      //color: Colors.cyanAccent,
      ),
      ),
    );
  }
}
