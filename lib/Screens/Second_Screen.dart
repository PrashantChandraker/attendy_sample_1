import 'package:flutter/material.dart';

/// Page 2 (Example page)
class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: const Text(
          "Hey Prashant!",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        actions: const [
          CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage("assets/prashant1.jpeg"),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
    );
  }
}
