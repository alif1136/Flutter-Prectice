import 'package:alif/Button.dart';
import 'package:alif/Grid_View.dart';
import 'package:alif/List_and_Others.dart';
import 'package:alif/Navigation_Test.dart';
import 'package:alif/alert.dart';
import 'package:alif/image_and_others.dart';
import 'package:flutter/material.dart';

class tab_and_drawer extends StatelessWidget {
  const tab_and_drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
      child: Scaffold(
      appBar: AppBar(
        title: Text('Tab Bar'),
        backgroundColor: Colors.deepPurpleAccent,
        bottom: TabBar(
          isScrollable: true,
            indicatorColor: Colors.teal,
            indicatorWeight: 2,
            indicatorPadding: EdgeInsets.all(8.0),
            indicator: BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.circular(30)
            ),
            labelStyle: TextStyle(
              fontSize: 20,
            ),
            unselectedLabelColor: Colors.deepOrange,
            unselectedLabelStyle: TextStyle(
              fontSize: 15,
            ),
            tabs: [
              SizedBox(width: 100,height: 100,
              child: Tab(
          icon: Icon(Icons.home),
          text: 'Home',
        ),
              ),
              SizedBox(width: 100,height: 100,
              child: Tab(
                icon: Icon(Icons.settings,color: Colors.white),
                text: 'Settings',
              ),
              ),
              Tab(
                icon: Icon(Icons.search,color: Colors.white),
                text: 'Search',
              ),
              Tab(
                icon: Icon(Icons.star,color: Colors.white),
                text: 'Favourite',
              ),
              Tab(
                icon: Icon(Icons.more_horiz_sharp,color: Colors.white),
                text: 'More',
              ),
            ],
        ),
      ),
        body: TabBarView(
          children: [
            // Container(
            //   height: 200,
            //   color: Colors.lightGreenAccent,
            //   child: Center(
            //     child: Text('Home',style: TextStyle(
            //       fontSize: 20,
            //       color: Colors.white
            //     ),),
            //   ),
            // ),
            // Container(
            //   height: 200,
            //   color: Colors.amber,
            //   child: Center(
            //     child: Text('Settings',style: TextStyle(
            //         fontSize: 20,
            //         color: Colors.white
            //     ),),
            //   ),
            // ),
            // Container(
            //   height: 200,
            //   color: Colors.red,
            //   child: Center(
            //     child: Text('Search',style: TextStyle(
            //         fontSize: 20,
            //         color: Colors.white
            //     ),),
            //   ),
            // ),
            // Container(
            //   height: 200,
            //   color: Colors.purple,
            //   child: Center(
            //     child: Text('Favourite',style: TextStyle(
            //         fontSize: 20,
            //         color: Colors.white
            //     ),),
            //   ),
            // ),
            // Container(
            //   height: 200,
            //   color: Colors.deepOrange,
            //   child: Center(
            //     child: Text('More Menu',style: TextStyle(
            //         fontSize: 20,
            //         color: Colors.white
            //     ),),
            //   ),
            // )
            Grid_View(),
            Stack(),
            List_and_others(),
            alert(),
            image(),
          ],
        ),
        drawer: Drawer(
          backgroundColor: Colors.lightGreenAccent,
          child: ListView(
            children: [
              DrawerHeader(
                  child: Column(
                     children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage('https://static.vecteezy.com/system/resources/previews/002/002/403/non_2x/man-with-beard-avatar-character-isolated-icon-free-vector.jpg'),

                      ),
                       SizedBox(height: 5,),
                       Text('Md.Alif Bin Saudh'),
                       Text('alifhamim50@gmail.com',
                       style: TextStyle(
                         fontSize: 10,
                         fontWeight: FontWeight.w300
                       ),
                       )
               ], 
              )
              ),
              ListTile(
                title: Text('Home'),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>button()));
                },
              ),
              Divider(),
              ListTile(
                visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                title: Text('Home'),
              ),
              Divider(),
              ListTile(
                title: Text('Home'),
              ),
              Divider(),
              ListTile(
                title: Text('Home'),
              ),
              Divider(),
              ListTile(
                title: Text('Home'),
              ),
              Divider(),
            ],
          ),
        ),
        endDrawer: Drawer(
          backgroundColor: Colors.lightGreenAccent,
          child: ListView(
            children: [
              DrawerHeader(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage('https://static.vecteezy.com/system/resources/previews/002/002/403/non_2x/man-with-beard-avatar-character-isolated-icon-free-vector.jpg'),

                      ),
                      SizedBox(height: 5,),
                      Text('Md.Alif Bin Saudh'),
                      Text('alifhamim50@gmail.com',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w300
                        ),
                      )
                    ],
                  )
              ),
              ListTile(
                title: Text('Home'),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>button()));
                },
              ),
              Divider(),
              ListTile(
                visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                title: Text('Home'),
              ),
              Divider(),
              ListTile(
                title: Text('Home'),
              ),
              Divider(),
              ListTile(
                title: Text('Home'),
              ),
              Divider(),
              ListTile(
                title: Text('Home'),
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
