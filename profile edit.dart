import 'package:flutter/material.dart';
import 'package:new1/login.dart';
import 'package:new1/main.dart';
import 'package:new1/profile%20page.dart';
import 'package:new1/home.dart';

class profileedit extends StatefulWidget {
  const profileedit({super.key, required this.title});
  final String title;

  @override
  State<profileedit> createState() => _profileeditState();
}

class _profileeditState extends State<profileedit> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController datecontroller = TextEditingController();
  TextEditingController numbercontroller = TextEditingController();
final formkey = GlobalKey<FormState>();




  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Center(


        child:
        SingleChildScrollView(
          child: Container(


            child: Column(
              children: [
                Image.asset("assets/image/logo.png", alignment: Alignment.center,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("PROFILE PAGE", style: TextStyle(
                      color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold,fontStyle: FontStyle.italic
                  ), ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("NAME : ", style: TextStyle(
                      color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold,fontStyle: FontStyle.italic
                  ), ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    onChanged: (value){
                      setState(() {
                      });
                    },
                    decoration: InputDecoration(
                      labelText: "Name",
                      prefixIcon: Icon(
                        Icons.drive_file_rename_outline,
                        color: Colors.black,
                        size: 24,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("EMAIL : ", style: TextStyle(
                      color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold,fontStyle: FontStyle.italic
                  ), ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    onChanged: (value){
                      setState(() {
                      });
                    },
                    decoration: InputDecoration(
                      labelText: "email",
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: Colors.black,
                        size: 24,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("MOBILE NUMBER : ", style: TextStyle(
                      color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold,fontStyle: FontStyle.italic
                  ), ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    onChanged: (value){
                      setState(() {
                      });
                    },
                    decoration: InputDecoration(
                      labelText: "mobile number",
                      prefixIcon: Icon(
                        Icons.numbers,
                        color: Colors.black,
                        size: 24,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("D.O.B: ", style: TextStyle(
                      color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold,fontStyle: FontStyle.italic
                  ), ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller:  datecontroller,
                    onChanged: (value){
                      setState(() {
                      });
                    },
                    validator: (value){
                      if (value!.isEmpty){
                        return 'plese enter the dob';
                      }
                      if (!RegExp(r'^\d{4}-\d{2}-\d{2}$').hasMatch(value)){
                        return 'the length of  password is 8 to 16';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: "country: ",
                      prefixIcon: Icon(
                        Icons.drive_file_rename_outline,
                        color: Colors.black,
                        size: 24,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("district : ", style: TextStyle(
                      color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold,fontStyle: FontStyle.italic
                  ), ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    onChanged: (value){
                      setState(() {
                      });
                    },
                    decoration: InputDecoration(
                      labelText: "district",
                      prefixIcon: Icon(
                        Icons.drive_file_rename_outline,
                        color: Colors.black,
                        size: 24,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),




                ElevatedButton(onPressed: (){
                  Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context){
                    return profile(title: "profile");
                  },
                  ),
                          (route) => false);

                }, child: Text("SAVE",style: TextStyle(
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
      ),
    );


  }
}