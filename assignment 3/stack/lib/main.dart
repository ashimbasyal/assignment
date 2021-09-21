import 'package:flutter/material.dart';

void main() {
  runApp(StackEg());
}

class StackEg extends StatelessWidget {
  const StackEg({Key? key}) : super(key: key);

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
              height: 150,
              width: 150,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.amber),
              child: Stack(
                alignment: Alignment.topRight,
                // overflow: Overflow.clip,
                clipBehavior: Clip.none,

                // fit: StackFit.passthrough,
                // // alignment: Alignment.bottomLeft,
                textDirection: TextDirection.ltr,

                children: [
                  Positioned(
                    right: -70,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.blue,
                    ),
                  ),
                  Text("ram"),

                  // alignment: Alignment.center,
                ],
              ),
            ),
          )),
    );
  }
}
