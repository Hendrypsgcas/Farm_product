import 'package:flutter/material.dart';

class nextpage extends StatelessWidget {
  String name, email, phoneno;

// Constructor to get the data from the previous page.
  nextpage({required this.name, required this.email, required this.phoneno});

  @override
  Widget build(BuildContext context) {
    // To listen to the changes in the textfield.
    TextEditingController _name = TextEditingController(text: name);
    TextEditingController _email = TextEditingController(text: email);
    TextEditingController _phoneno = TextEditingController(text: phoneno);

    return Scaffold(
      appBar: AppBar(
        title: Text('Next Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(25),
              child: TextField(
                // To set the appropriate controller
                // to the text field.
                controller: _name,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Name",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: TextField(
                controller: _email,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: TextField(
                controller: _phoneno,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Number",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
