import 'package:flutter/material.dart';
import 'package:new1/pageinput.dart';
/*
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
}*/
