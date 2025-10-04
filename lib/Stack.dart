import 'package:alif/Navigation_Test.dart';
import 'package:flutter/material.dart';
import 'City_widget/City_Wgt.dart';
class Stack_View extends StatelessWidget {
  const Stack_View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack View'),
        backgroundColor: Colors.lightGreen,
      ),
      body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children:[
              Container(
                color: Colors.purple,
                height: 150,
                width: 150,
              ),
              Positioned(
                left: 10,
                right: 10,
                bottom: 10,
                top: 20,
                child: Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.red,
              )
            ],
          ),
          SizedBox(height: 10,),
          Stack(
            children: [
              CircleAvatar(
                radius: 70,
                backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzR0bIMZ71HVeR5zF4PihQaDvTQQk6bsVERw&s'),
              ),
              Positioned(
                bottom: 20,
                right: 10,
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black,width: 3),
                ),
              ),
              )
            ],
          ),
          SizedBox(height: 10,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                City_Widget(img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEsUXSKwa0E59XG1kz8NRvWO38oYUnx9XmhA&s',title: 'Dhaka, Bangladesh',rating: '5.0'),
                SizedBox(height: 10,),
                City_Widget(img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTb84fi84kcqoZnBLnh1x_rm5XqBUUyXP9M5fuFueO6hrEel1PU96uhpaV4z--22SsTvvM&usqp=CAU',title: 'Dhaka, Bangladesh',rating: '5.0'),
                SizedBox(height: 10,),
                City_Widget(img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEsUXSKwa0E59XG1kz8NRvWO38oYUnx9XmhA&s',title: 'Dhaka, Bangladesh',rating: '5.0'),
                SizedBox(height: 10,),
                City_Widget(img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEsUXSKwa0E59XG1kz8NRvWO38oYUnx9XmhA&s',title: 'Dhaka, Bangladesh',rating: '5.0')
              ],
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(onPressed: (){
            Navigator.push(
                context, MaterialPageRoute(builder: (context)=>Navigation_Test(name: 'Click Here',)));
          },
              child: Text('Next Page'))
        ],
      ),
      ),
    );
  }
}


