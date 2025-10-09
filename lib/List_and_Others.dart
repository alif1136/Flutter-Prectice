import 'package:flutter/material.dart';

class List_and_others extends StatelessWidget {
  const List_and_others({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List and Others'),
        backgroundColor: Colors.red,
      ),
      //body: Column(
        // children: [
        //   ListTile(
        //     leading: Icon(Icons.phone),
        //     trailing: Icon(Icons.delete,color: Colors.black,),
        //     title: Text('Alif'),
        //     subtitle: Text('01964082626'),
        //   )
        // ],
      // body: ListView(
      //   children: [
      //     ListTile(
      //       leading: Icon(Icons.phone),
      //       trailing: Icon(Icons.delete,color: Colors.black,),
      //       title: Text('Alif'),
      //       subtitle: Text('01964082626'),
      //     ),
      //     // ListTile(
      //     //   leading: Icon(Icons.phone),
      //     //   trailing: Icon(Icons.delete,color: Colors.black,),
      //     //   title: Text('Alif'),
      //     //   subtitle: Text('01964082626'),
      //     // ),
      //     // ListTile(
      //     //   leading: Icon(Icons.phone),
      //     //   trailing: Icon(Icons.delete,color: Colors.black,),
      //     //   title: Text('Alif'),
      //     //   subtitle: Text('01964082626'),
      //     // ),
      //     // ListTile(
      //     //   leading: Icon(Icons.phone),
      //     //   trailing: Icon(Icons.delete,color: Colors.black,),
      //     //   title: Text('Alif'),
      //     //   subtitle: Text('01964082626'),
      //     // ),
      //     // ListTile(
      //     //   leading: Icon(Icons.phone),
      //     //   trailing: Icon(Icons.delete,color: Colors.black,),
      //     //   title: Text('Alif'),
      //     //   subtitle: Text('01964082626'),
      //     // ),
      //     // ListTile(
      //     //   leading: Icon(Icons.phone),
      //     //   trailing: Icon(Icons.delete,color: Colors.black,),
      //     //   title: Text('Alif'),
      //     //   subtitle: Text('01964082626'),
      //     // ),
      //     // ListTile(
      //     //   leading: Icon(Icons.phone),
      //     //   trailing: Icon(Icons.delete,color: Colors.black,),
      //     //   title: Text('Alif'),
      //     //   subtitle: Text('01964082626'),
      //     // ),
      //     // ListTile(
      //     //   leading: Icon(Icons.phone),
      //     //   trailing: Icon(Icons.delete,color: Colors.black,),
      //     //   title: Text('Alif'),
      //     //   subtitle: Text('01964082626'),
      //     // ),
      //     // ListTile(
      //     //   leading: Icon(Icons.phone),
      //     //   trailing: Icon(Icons.delete,color: Colors.black,),
      //     //   title: Text('Alif'),
      //     //   subtitle: Text('01964082626'),
      //     // ),
      //     // ListTile(
      //     //   leading: Icon(Icons.phone),
      //     //   trailing: Icon(Icons.delete,color: Colors.black,),
      //     //   title: Text('Alif'),
      //     //   subtitle: Text('01964082626'),
      //     // ),
      //     // ListTile(
      //     //   leading: Icon(Icons.phone),
      //     //   trailing: Icon(Icons.delete,color: Colors.black,),
      //     //   title: Text('Alif'),
      //     //   subtitle: Text('01964082626'),
      //     // ),
      //     // ListTile(
      //     //   leading: Icon(Icons.phone),
      //     //   trailing: Icon(Icons.delete,color: Colors.black,),
      //     //   title: Text('Alif'),
      //     //   subtitle: Text('01964082626'),
      //     // ),
      //     // ListTile(
      //     //   leading: Icon(Icons.phone),
      //     //   trailing: Icon(Icons.delete,color: Colors.black,),
      //     //   title: Text('Alif'),
      //     //   subtitle: Text('01964082626'),
      //     // ),
      //     // ListTile(
      //     //   leading: Icon(Icons.phone),
      //     //   trailing: Icon(Icons.delete,color: Colors.black,),
      //     //   title: Text('Alif'),
      //     //   subtitle: Text('01964082626'),
      //     // )
      //   ],
      // ),

      body: ListView.separated(
        itemCount: 11, // 1 extra for the TextField
        itemBuilder: (context, index) {
          if (index == 0) {
            // Return the TextField at the top
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Search',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            );
          }

          // Adjust the index for the rest of the items
          final itemIndex = index - 1;

          return Card(
            child: ListTile(
              leading: Icon(Icons.phone),
              trailing: Icon(Icons.delete, color: Colors.black),
              title: Text('Alif $itemIndex'),
              subtitle: Text('01964082626'),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(thickness: 4);
        },
      ),

      // body: ListView.builder(
      //   //scrollDirection: Axis.horizontal,
      //   itemCount: 30,
      //     itemBuilder: (context,index){
      //     return Container(width: 120,
      //         color: Colors.blue[100*((index%8)+1)],
      //     child: Center(child: Text('ITEM = $index'),
      //     )
      //     );
          // return Card(
          //   child: ListTile(
          //   leading: Icon(Icons.phone),
          //   trailing: Icon(Icons.delete,color: Colors.black,),
          //   title: Text('Alif $index'),
          //   subtitle: Text('01964082626'),
          // )
          // );

    );
  }
}
