import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Buttons"),
      ),
      body: Column(
        children: [
          TextButton(
            child: Text("click here"),
            onPressed: () {
              print("click here");
            },
            onLongPress: () => print("long pressed !!"),
          ),
          ElevatedButton(
            child: Text("Click ME"),
            onPressed: () {
              print("clicked me !!");
            },
          ),
          OutlinedButton(
            child: Text("press Me"),
            onPressed: () => print("got it!"),
          )
        ],
      ),
    );
  }
}
