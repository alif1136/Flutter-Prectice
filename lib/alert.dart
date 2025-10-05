import 'package:flutter/material.dart';

class alert extends StatelessWidget {
  const alert({super.key});

  @override
  Widget build(BuildContext context) {
    void showAlert(){
      showDialog(context: context, builder: (context){
        return AlertDialog(
          title: Text('This is Title'),
          content: Text('Are You sure...??'),
          actions: [
            TextButton(onPressed: (){
              Navigator.pop(context);
            },
                child: Text('Cencel')),
            ElevatedButton(onPressed: (){}, child: Text('Submit')),
          ],
        );
      }
      );
    }
    void showAlertDialog(){
      showDialog(context: context,
          barrierDismissible: false,
          builder: (context){
        return AlertDialog(
          title: Text('Installation Block'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Icon(Icons.warning,color: Colors.red,size: 50,),
                  SizedBox(width: 10,),
                  Text('Warning...!!')
                ],
              ),
              SizedBox(height: 10,),
              Text('This is a Alert Page.So You Should Be Alert..!!',
              style: TextStyle(
                color: Colors.cyanAccent
              ),
              ),
            ],
          ),
          actions: [
            TextButton(onPressed: (){
              Navigator.pop(context);
            },
                //child: Text('Cencel')),
                child: Text('Ok')),
            //ElevatedButton(onPressed: (){}, child: Text('Submit')),
          ],
        );
      }
      );
    }
    void showSimpleDialoge() {
      showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: const Text('Simple Dialog'),
            children: [
              SimpleDialogOption(
                child: const Text('Option 1'),
                onPressed: () {
                  //Navigator.pop(context);
                },
              ),
              SimpleDialogOption(
                child: const TextField(
                  decoration: InputDecoration(
                    labelText: 'Enter something',
                  ),
                ),
              ),
            ],
          );
        },
      );
    }
void showBottomSheet(){
      showModalBottomSheet(context: context, builder: (context)=>Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Chose Option',
            style: TextStyle(
              fontSize: 20
            ),
            ),
            ListTile(
              title: Text('option 1'),
            ),
            ListTile(
              title: Text('option 1'),
            ),
            ListTile(
              title: Text('option 1'),
            ),
            ListTile(
              title: Text('option 1'),
            ),
          ],
        ),
      ));
}
void showCustomDialog(){
      showDialog(context: context, builder: (context)=>Dialog(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxXnC3fwMwkbIt3ejGRIw3NmbDyUtgS5g2jA&s'),
            SizedBox(height: 10,),
            Text('Custom Dialog'),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            },
                child: Text('Close'))
          ],
        ),
      ));
}
void showLoadingDialog(){
      showDialog(context: context, builder: (context)=>Dialog(
        child: Padding(padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            CircularProgressIndicator(),
            SizedBox(width: 20,),
            Text('Loading...')
          ],
        ),
        )
      )
      );
}
void showSnackBar(){
      ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('This is a SnackBar'))
  );
}

    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: (){
            showAlert();
          },
              child: Text('Alert...!!!')),
          ElevatedButton(onPressed: (){
            showAlertDialog();
          },
              child: Text('Alert Dialog Icon')),
          ElevatedButton(onPressed: (){
            showSimpleDialoge();
          },
              child: Text('Alert Dialog Option')),
          ElevatedButton(onPressed: (){
            showBottomSheet();
          }, 
              child: Text('Bottom Sheet')),
          ElevatedButton(onPressed: (){
            showCustomDialog();
          },
              child: Text('Dialog')),
          ElevatedButton(onPressed: (){
            showLoadingDialog();
          },
              child: Text('Loading')),
          ElevatedButton(onPressed: (){
            showSnackBar();
          },
              child: Text('SnackBar'))
        ],
      ),
      ),
    );
  }
}
