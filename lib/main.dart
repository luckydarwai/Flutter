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
          body: GridView.builder(
            itemBuilder: (context, index) {
              return Container(
                height: 300,
                width: 100,
                color: arrColors[index],
              );
            },
            itemCount: arrColors.length,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                crossAxisSpacing: 11,
                mainAxisSpacing: 11),
          )),
    );
  }
}
