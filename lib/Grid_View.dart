import 'package:flutter/material.dart';
class Grid_View extends StatelessWidget {
  const Grid_View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Grid View'),
          backgroundColor: Colors.red,
        ),
      // body: GridView.count(
      //   crossAxisCount: 3,
      //     crossAxisSpacing: 10,
      //     mainAxisSpacing: 10,
      //     children:
      //       List.generate(10, (index){
      //         return Card(
      //           elevation: 20,
      //           shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(50)
      //           ),
      //           color: Colors.blue,
      //           child: Column(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: [
      //               Icon(Icons.outbox_outlined),
      //               Text('Cash Out',
      //               style: TextStyle(
      //                 fontSize: 20,
      //                 color: Colors.red
      //               ),)
      //             ],
      //           ),
      //         );
      //       }
      //       )
      //     ),
      body: GridView.builder(
        itemCount: 30 ,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5),
              itemBuilder: (context,index){
            return Container(
            width: 120,
            color: Colors.blue[100*((index%8)+1)],
    child: Center(child: Text('Item = $index')),
            );
    },
      ),
    );
  }
}
