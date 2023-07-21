import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int count = 10;

  @override
  Widget build(BuildContext context) {
    print("building");
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          count = count + 1;
          print(count);
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Text(
          "${count}",
          style: TextStyle(
            fontSize: 40,
          ),
        ),
      ),
    );
  }
}
