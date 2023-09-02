import 'package:flutter/material.dart';


class input extends StatefulWidget {
  const input({Key? key}) : super(key: key);

  @override
  State<input> createState() => _inputState();
}

class _inputState extends State<input> {
  // this will be displayed on the screen
  String? _result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KindaCode.com'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              onChanged: (value) => setState(() {
                _result = value;
              }),
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              _result ?? 'Type something',
              style: const TextStyle(fontSize: 30),
            )
          ],
        ),
      ),
    );
  }
}