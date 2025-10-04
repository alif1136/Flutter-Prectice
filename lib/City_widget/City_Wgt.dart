import 'package:flutter/material.dart';

class City_Widget extends StatelessWidget {
  final String img,title,rating;
  const City_Widget({
    super.key, required this.img, required this.title, required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
        height: 100,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(image: NetworkImage(img))
        ),
        child: Image.network(img)),
        Positioned(
            bottom: 20,
            left: 10,
            child: Text(title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15
              ),
            )
        ),
        ElevatedButton(onPressed: (){}, child: Text('☆${rating}',style: TextStyle(color: Colors.amber),))
      ],
    );
  }
}