import 'package:flutter/material.dart';
import 'package:navigation/features/page3.dart';

import 'page2.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextButton(
            onPressed: () async {
              final returnValue = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Page2(),
                ),
              );
              print(returnValue);
            },
            child: Text(
              "Go to page 2",
              style: TextStyle(fontSize: 24),
            ),
          ),
          TextButton(
            onPressed: () async {
              await Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Page3(name: "Sudhir")));
              print("Hello world");
            },
            child: Text(
              "Go to page 3",
              style: TextStyle(fontSize: 24),
            ),
          ),
          TextButton(
            onPressed: () async {
              await Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Page3(name: "Sudhir")));
              print("Hello world");
            },
            child: Text(
              "Replace with page 3",
              style: TextStyle(fontSize: 24),
            ),
          ),
        ],
      ),
    );
  }
}
