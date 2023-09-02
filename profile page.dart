import 'package:flutter/material.dart';
import 'package:new1/login.dart';
import 'package:new1/main.dart';
import 'package:new1/profile%20edit.dart';
import 'package:new1/home.dart';

class profile extends StatefulWidget {
  const profile({super.key, required this.title});
  final String title;

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {





  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body:
      SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 50, // <-- SEE HERE
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("PROFILE PAGE", style: TextStyle(
                        color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,
                    ),
                    textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Center(
                  child: Image(image: AssetImage("assets/image/img.png"),height: 150 ,width: 150, alignment: Alignment.center,

                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("NAME : HENDRY", style: TextStyle(
                      color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold,fontStyle: FontStyle.italic
                  ), ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("EMAIL :  1234@gamil.com", style: TextStyle(
                      color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold,fontStyle: FontStyle.italic
                  ), ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("MOBILE NUMBER : 123456789", style: TextStyle(
                      color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold,fontStyle: FontStyle.italic
                  ), ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("STATE : TAMILNADU", style: TextStyle(
                      color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold,fontStyle: FontStyle.italic
                  ), ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("DISTRICT : COIAMBATORE", style: TextStyle(
                      color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold,fontStyle: FontStyle.italic
                  ), ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("COUNTRY : INDIA", style: TextStyle(
                      color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold,fontStyle: FontStyle.italic
                  ), ),
                ),


                ElevatedButton(onPressed: (){
                  Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context){
                    return profileedit(title: 'profile edit',);
                  },
                  ),
                          (route) => false);

                }, child: Text("EDIT PROFILE",style: TextStyle(
                    fontSize: 20, color: Colors.white
                )),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlueAccent,
                    shape:  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),

                    ),
                    padding: EdgeInsets.fromLTRB(15,10,15,10),

                  ),
                ),
              ],
            ),
          ),


    );


  }
}