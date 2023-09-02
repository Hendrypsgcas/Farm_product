import 'package:flutter/material.dart';
import 'package:new1/login.dart';
import 'package:new1/main.dart';
import 'package:new1/home.dart';

class spalsh extends StatefulWidget {
  const spalsh({super.key, required this.title});
  final String title;

  @override
  State<spalsh> createState() => _spalshState();
}

class _spalshState extends State<spalsh> {





  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Center(


        child:
        Container(


          child: Column(
            children: [
              SizedBox(
                height: 50, // <-- SEE HERE
              ),


             SizedBox(
                height: 50, // <-- SEE HERE
              ),
              Image(image: AssetImage("assets/image/top.jpg"), ),
              Image.asset("assets/image/img_1.png", alignment: Alignment.center,),


              Align(
                alignment: Alignment.bottomCenter,
                child: IconButton(onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignIn())
                  );
                }, icon: Icon(
                  Icons.login_outlined,
                  color:  Colors.black ,
                  size: 40,

                ),
                ),

              ),
              ElevatedButton(onPressed: (){
                Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context){
                  return SignIn();
                },
                ),
                        (route) => false);

              }, child: Text("Welcome",style: TextStyle(
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
    ),
    );


  }
}