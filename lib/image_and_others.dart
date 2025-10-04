import 'package:flutter/material.dart';

class image extends StatelessWidget {
  const image({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    final _formkey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Image and Others'),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 5,),
          Image.network('https://images.ctfassets.net/23aumh6u8s0i/4TsG2mTRrLFhlQ9G1m19sC/4c9f98d56165a0bdd71cbe7b9c2e2484/flutter',
          width: 250,
          height: 200
          ),
          SizedBox(height: 10,),
          Image.asset('assets/Flutter_Image.png',
          width: 250,
          height: 250,
          ),
          Text('Login with Phone and Password',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600
          ),
          ),
          SizedBox(height: 10,),
          Form(
            key: _formkey,
            child: Padding(
                padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  TextFormField(
                    controller: phoneController,
                    decoration: InputDecoration(
                      hintText: 'Phone Number',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                      ),
                    ),
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return 'Please Enter Your Phone Number';
                      }
                      else if(value.length != 11){
                        return 'Please Enter Correct Number';
                      }
                      else{
                        return null;
                      }
                    },
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'Password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)
                        )
                    ),
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return 'Please Enter Your Password';
                      }
                      else if(value.length < 8){
                        return 'Password must be 8 character';
                      }
                      else{
                        return null;
                      }
                    },
                  ),
                  SizedBox(height: 10,),
                  SizedBox(
                      height: 40,
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
                            if(_formkey.currentState!.validate()){
                              print(phoneController.text);
                              print(passwordController.text);

                              phoneController.clear();
                              passwordController.clear();
                            }
                            print(phoneController.text);
                            print(passwordController.text);
                          },
                          child:Text('Submit',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                      )
                  ),
                ],
              )
          ),
          ),

          Container(
            alignment: Alignment.center,
           height: 70,
           width: 150,
           decoration: BoxDecoration(
             color: Colors.red,
             border: Border.all(
               width: 2,
             ),
             borderRadius: BorderRadius.circular(15),
             boxShadow: [BoxShadow(
               color: Colors.black.withOpacity(0.4),
               offset: Offset(3,4)
             ),
             ]
           ),
           child: Text('This is Container'),
          ),
          SizedBox(height: 5,),
          // Card(
          //   color: Colors.blue,
          //   child: Container(
          //     width: 100,
          //     height: 50,
          //     color: Colors.lightGreenAccent,
          //   ),
          // ),
          Card(
            color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('This is card'),
            ),
          )
        ],
      ),
    );
  }
}
