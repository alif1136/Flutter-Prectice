import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  const Input({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Input'),
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
      ),
      body: Column(
        children: [ 
          Padding(
          //padding: const EdgeInsets.all(8.0),
            //padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 50),
            padding: const EdgeInsets.only(left:10,right:15,top:25,bottom:20),
          child: TextField(
            controller: phoneController,
            keyboardType: TextInputType.phone,
            maxLength: 11,
            cursorColor: Colors.amberAccent,
            style: TextStyle(
              fontSize: 20,
            ),
            decoration: InputDecoration(
              hintText: 'Enter Your Number',
              hintStyle: TextStyle(
                color: Colors.cyanAccent
              ),
              helperText: 'Enter Digits Only',
              labelText: 'Enter Your Phone Number',
              prefixIcon: Icon(Icons.phone),
              suffixIcon: Icon(Icons.check),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  color: Colors.blue,width: 2
                )
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(
                  color: Colors.pink,width: 3
                )
              ),
              filled: true,
              fillColor: Colors.pink.shade100,
              contentPadding: EdgeInsets.all(25)
            ),
          ),
          ),



          Padding(
            //padding: const EdgeInsets.all(8.0),
            //padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 50),
            padding: const EdgeInsets.only(left:10,right:15,top:25,bottom:20),
            child: TextField(
              controller: passwordController,
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
              maxLength: 20,
              cursorColor: Colors.amberAccent,
              style: TextStyle(
                fontSize: 20,
              ),
              decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(
                      color: Colors.red
                  ),
                  helperText: 'Enter Character Only',
                  labelText: 'Enter Your Password',
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                          color: Colors.amberAccent,width: 2
                      )
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(
                          color: Colors.lightGreenAccent,width: 3
                      )
                  ),
                  filled: true,
                  fillColor: Colors.blueGrey.shade100,
                  contentPadding: EdgeInsets.all(25)
              ),
            ),
          ),

          SizedBox(
              height: 50,
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
                  onPressed: (){
                    print(phoneController.text);
                    print(passwordController.text);
                    phoneController.clear();
                    passwordController.clear();
                  }, child:Text('Submit',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              )
              )
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
