import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var arrColors = [
      Colors.red,
      Colors.green,
      Colors.blue,
      Colors.pink,
      Colors.orange,
      Colors.black,
      Colors.brown,
      Colors.purple
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Center(child: Text("Grid View")),
          ),
          body: GridView.extent(
            maxCrossAxisExtent: 300,
            mainAxisSpacing: 11,
            crossAxisSpacing: 11,
            children: [
              Container(
                color: arrColors[0],
              ),
              Container(
                color: arrColors[1],
              ),
              Container(
                color: arrColors[2],
              ),
              Container(
                color: arrColors[3],
              ),
              Container(
                color: arrColors[4],
              ),
              Container(
                color: arrColors[7],
              ),
            ],
          )),
    );
  }
}
