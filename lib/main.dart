import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
        title: Center(child: const Text("Flutter Container ")),
      ),
      body: Center(
        child: Container(
          height: 150,
          width: 150,
          child: const Text("My container"),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(25),
              border: Border.all(
                width: 2,
                color: Colors.black,
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 11,
                  spreadRadius: 7,
                )
              ]),
        ),
      ),
    );
  }
}
