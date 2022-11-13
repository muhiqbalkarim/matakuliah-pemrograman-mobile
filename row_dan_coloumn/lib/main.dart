import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ColumnRow(),
    );
  }
}

class ColumnRow extends StatelessWidget {
  const ColumnRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget Kolum dan Row'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            width: 400,
            height: 130,
            decoration: BoxDecoration(
              color: Colors.blue[200],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.home,
                      size: 100,
                      color: Colors.yellow,
                    ),
                    Text('Home')
                  ],
                ),
                Icon(
                  Icons.people,
                  size: 100,
                  color: Colors.black,
                ),
                Icon(
                  Icons.apple,
                  size: 100,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: 400,
            height: 130,
            color: Colors.red[200],
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  color: Colors.blue,
                  width: 130,
                  height: 100,
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  width: 80,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  color: Colors.red,
                  width: 80,
                  height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('NPM',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      Text(
                        'Nama',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      Text(
                        'Alamat',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
