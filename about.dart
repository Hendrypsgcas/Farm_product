import 'package:flutter/material.dart';
import 'package:new1/login.dart';
import 'package:new1/main.dart';
import 'package:new1/profile%20edit.dart';
import 'package:new1/home.dart';

class about extends StatefulWidget {
  const about({super.key, required this.title});
  final String title;

  @override
  State<about> createState() => _aboutState();
}

class _aboutState extends State<about> {





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
                child: Text("ABOUT PAGE", style: TextStyle(
                  color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,
                ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Center(
              child: Image(image: AssetImage("assets/image/logo.png"),height: 150 ,width: 150, alignment: Alignment.center,

              ),
            ),

         Text(" farm prodect Agriculture is a very common word which is used almost by everyone. When we talk about agriculture than the very first thing that strikes our brain is, it must be something that is related to farming and farmers. But this thought limits the aspects of agriculture. Agriculture does not only mean the procedure of cropping instead it means much more.", style: TextStyle(
          color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,
        ),
          textAlign: TextAlign.center,
        ),



          ],
        ),
      ),


    );


  }
}