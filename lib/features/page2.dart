import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 2"),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.pop(context, "From page 2 ");
          },
          child: Text(
            "Go Back",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
