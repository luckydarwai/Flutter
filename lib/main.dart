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
          title: Center(child: Text("Flutter Scrollview Widget")),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 11),
                  height: 200,
                  color: Colors.amber,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(11),
                          height: 200,
                          width: 200,
                          color: Colors.redAccent,
                        ),
                        Container(
                          margin: const EdgeInsets.all(11),
                          height: 200,
                          width: 200,
                          color: Colors.black,
                        ),
                        Container(
                          margin: const EdgeInsets.all(11),
                          height: 200,
                          width: 200,
                          color: Colors.deepOrange,
                        ),
                        Container(
                          margin: const EdgeInsets.all(11),
                          height: 200,
                          width: 200,
                          color: Colors.deepPurple,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 11),
                  height: 200,
                  color: Colors.blueAccent,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 11),
                  height: 200,
                  color: Colors.greenAccent,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 11),
                  height: 200,
                  color: Colors.yellowAccent,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 11),
                  height: 200,
                  color: Colors.purpleAccent,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 11),
                  height: 200,
                  color: Colors.pinkAccent,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 11),
                  height: 200,
                  color: Colors.brown,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 11),
                  height: 200,
                  color: Colors.orange,
                ),
              ],
            ),
          ),
        ));
  }
}
