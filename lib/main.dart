import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatefulWidget {
  const myApp({super.key});

  @override
  State<myApp> createState() => homePage();
}

class homePage extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Row And Coloumn',
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Container(
            // height: 350,
            // width: 350,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "A",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text("B", style: TextStyle(fontSize: 20)),
                      Text("C", style: TextStyle(fontSize: 20)),
                      Text("D", style: TextStyle(fontSize: 20)),
                      Text("E", style: TextStyle(fontSize: 20)),
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "E",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        "F",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        "G",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        "H",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        "I",
                        style: TextStyle(fontSize: 20),
                      ),
                    ]),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          "assets/images/apple.jpg",
                          height: 200,
                          width: 200,
                        ),
                        Image.asset(
                          "assets/images/apple.jpg",
                          height: 200,
                          width: 200,
                        ),
                        Image.asset(
                          "assets/images/apple.jpg",
                          height: 200,
                          width: 200,
                        ),
                        Image.asset(
                          "assets/images/apple.jpg",
                          height: 200,
                          width: 200,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          "assets/images/mango.jpg",
                          height: 200,
                          width: 200,
                        ),
                        Image.asset(
                          "assets/images/mango.jpg",
                          height: 200,
                          width: 200,
                        ),
                        Image.asset(
                          "assets/images/mango.jpg",
                          height: 200,
                          width: 200,
                        ),
                        Image.asset(
                          "assets/images/mango.jpg",
                          height: 200,
                          width: 200,
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
