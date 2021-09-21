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
            title: const Text('Assignment 3'),
          ),
          body: Center(
            child: Container(
              width: 150,
              height: 150,
              color: Colors.grey,
              child: Stack(
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    color: Colors.red,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue,
                  )
                ],
              ),
            ),
          )),
    );
  }
}
