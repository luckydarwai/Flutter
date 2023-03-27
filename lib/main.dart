import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Learning',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'MY Home Page'),
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
        title: Center(child: const Text("Flutter Expanded Widget ")),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 250),
        child: Row(
          children: [
            Expanded(
              child: Container(
                width: 50,
                height: 100,
                color: Colors.blueAccent,
              ),
            ),
            Expanded(
              child: Container(
                width: 50,
                height: 100,
                color: Colors.blueGrey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
