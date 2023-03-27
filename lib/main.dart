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
    var arrNames = ['Lukcy', 'Ravi', 'OM', 'Jay', "Lalit"];
    return Scaffold(
        appBar: AppBar(
          title: Center(child: const Text("Flutter CircleAvatar Widget ")),
        ),
        // body: Center(
        //   child: Container(
        //     height: 120,
        //     width: 120,
        //     child: CircleAvatar(
        //       backgroundImage: AssetImage('assets/images/myphoto1.jpg'),
        //       backgroundColor: Colors.transparent,
        //       // backgroundColor: Colors.blueGrey,
        //     ),
        //   ),
        // ),
        body: Center(
          child: CircleAvatar(
            child: Container(
              width: 60,
              height: 60,
              child: Column(children: [
                Container(
                  width: 60,
                  height: 40,
                  child: Image.asset('assets/images/myphoto1.jpg'),
                ),
                Text("Name")
              ]),
            ),
            backgroundColor: Colors.greenAccent,
            maxRadius: 90,
            // minRadius:10,
          ),
        ));
  }
}
