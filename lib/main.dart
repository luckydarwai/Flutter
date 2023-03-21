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
    var names = [
      'Raman',
      'RamanuJan',
      'Ashu',
      'Ravi',
      'Lucky',
      'Lalit',
      'Sanjay'
    ];
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Flutter Listview Widget")),
      ),
      // statically defined data
      // body: ListView(
      //   scrollDirection: Axis.horizontal,
      //   reverse: true,
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text(
      //         "One",
      //         style: TextStyle(fontSize: 21, fontWeight: FontWeight.w400),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text(
      //         "Two",
      //         style: TextStyle(fontSize: 21, fontWeight: FontWeight.w400),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text(
      //         "Three",
      //         style: TextStyle(fontSize: 21, fontWeight: FontWeight.w400),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text(
      //         "Four",
      //         style: TextStyle(fontSize: 21, fontWeight: FontWeight.w400),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text(
      //         "Five",
      //         style: TextStyle(fontSize: 21, fontWeight: FontWeight.w400),
      //       ),
      //     )
      //   ],
      // )
      // Dynamically defined data
      // body: ListView.builder(
      //   itemBuilder: (context, index) {
      //     return Text(
      //       names[index],
      //       style: TextStyle(fontSize: 21, fontWeight: FontWeight.w400),
      //     );
      //   },
      //   // reverse: true,
      //   itemExtent: 200,
      //   itemCount: names.length,
      // ),
      // for seperating each items using listview.seperated
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Text(
            names[index],
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.w400),
          );
        },
        // reverse: true,
        itemCount: names.length,
        separatorBuilder: (context, index) {
          return Divider(
            height: 100,
            thickness: 4,
          );
        },
      ),
    );
  }
}
