import 'package:flutter/material.dart';
import 'package:new1/about.dart';
import 'package:new1/home.dart';
import 'package:new1/input.dart';
import 'package:new1/login.dart';
import 'package:new1/profile%20page.dart';
import 'package:new1/spalsh.dart';

/*
import 'login.dart';

void main() {
      runApp(const MyApp(title: "WELCOME GAMER"));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,

      ),
      home: const home()
    );
  }
}
class drawerclass extends StatefulWidget {
  const drawerclass({super.key, required this.title});
  final String title;

  @override
  State<drawerclass> createState() => _drawerclassState();
}

class _drawerclassState extends State<drawerclass> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black12
           ,

        title: Text(widget.title),
        actions: const [ Icon(Icons.notifications)],
      ),

      drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Image.asset("assets/image/logo.png"),
                decoration: BoxDecoration(color: Colors.black12),),
              ListTile(
                leading: Icon(Icons.account_circle_outlined),
                title: Text("profile"),
                onTap: () {
                  print("profile");
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => profile(title: "my app")));
                },

              ),
              ListTile(
                leading: Icon(Icons.home_rounded),
                title: Text("Home"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) =>home()));
                },

              ),
              ListTile(
                leading: Icon(Icons.home_rounded),
                title: Text("farm product"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) =>about(title: "farm product")));
                },

              ),
              ListTile(
                leading: Icon(Icons.logout_outlined),
                title: Text("logout"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => SignIn()));
                },
              ),


            ],
          )

      ),

      body: Center(

    child: ListView(
    children: [
    Column(
    children: [
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text("this is drawer class"),
    ),


    ],
    )
    ],
    ),
    ),
    );
  }
}*/
import 'package:flutter/material.dart';
import 'package:new1/pageinput.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'GeeksForGeeks'),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
// To listen to the changes in the textfield.
  TextEditingController _name = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _phoneno = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(25),
              child: TextField(
                // To set the appropriate
                // controller to the text field.
                controller: _name,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Enter your Name"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: TextField(
                controller: _email,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Enter your Email"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: TextField(
                controller: _phoneno,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Enter your Phone Number"),
              ),
            ),
            // Button to go to the nextpage.
            ElevatedButton(
                onPressed: () {
                  // Navigator to the next page.
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      // Builder for the nextpage
                      // class's constructor.
                        builder: (context) => nextpage(
                          // Date as arguments to
                          // send to next page.
                          name: _name.text,
                          email: _email.text,
                          phoneno: _phoneno.text,
                        )),
                  );
                },
                child: Text("SEND"))
          ],
        ),
      ),
    );
  }
}
