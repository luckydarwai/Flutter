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
        title: Center(child: Text("Flutter Inkwell Widget ")),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            print('Tapped !!');
          },
          onDoubleTap: () => print("Double Tapped!!"),
          onLongPress: () => print("Long pressed!!"),
          onHover: (value) => print('color changed!!'),
          child: Container(
            height: 200,
            width: 200,
            color: Colors.amber,
            child: Center(
                child: InkWell(
                    onTap: () => print('Tapped on Text'),
                    child: Text(
                      "click Me !!",
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 25,
                      ),
                    ))),
          ),
        ),
      ),
    );
  }
}
