import 'package:flutter/material.dart';
import 'package:navigation/features/page2.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.pop(context);
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Page2()));
          },
          child: Text(
            "Replace with page 2",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
