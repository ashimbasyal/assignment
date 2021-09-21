import 'package:flutter/material.dart';

void main() {
  runApp(Demo1());
}

class Demo1 extends StatelessWidget {
  const Demo1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Assignment 2'),
        ),
        body: Row(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 350,
                      color: Colors.red,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 350,
                      color: Colors.yellow,
                      //margin outside
                      //padding inside
                      margin: const EdgeInsets.only(left: 0, top: 50),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 150,
                  width: 80,
                  color: Colors.green,
                  margin: const EdgeInsets.only(left: 25, top: 0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
