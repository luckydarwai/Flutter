import 'package:flutter/material.dart';
import 'package:flutter_deep/ui_helper/util.dart';

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
          primarySwatch: Colors.blueGrey,
          textTheme: TextTheme(
              headline1: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent),
              subtitle1: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w200,
                  color: Colors.black))),
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
          title: const Center(child: Text("Styles and Themes")),
        ),
        body: Center(
          child: Card(
            elevation: 20,
            shadowColor: Colors.pink[900],
            shape: Border.all(),
            child: Text(
              'Shodaw by Card',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
        ));
  }
}
