import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
    var time = DateTime.now();
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Text Field")),
        ),
        body: Center(
          child: Container(
            height: 300,
            width: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Current time--> ${DateFormat('Hms').format(time)}",
                  style: TextStyle(fontSize: 20),
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {});
                    },
                    child: Text("Update Time?"))
              ],
            ),
          ),
        ));
  }
}
