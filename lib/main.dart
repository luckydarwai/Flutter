import 'package:flutter/material.dart';

void main() => runApp(MyHomePage());

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  callBack() {
    print("clicked>>>>>");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Callback Function"),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: callBack,
            child: Text(
              "Click Me",
            ),
          ),
        ),
      ),
    );
  }
}
