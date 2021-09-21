import 'package:flutter/material.dart';

void main() {
  runApp(CrossEg());
}

class CrossEg extends StatelessWidget {
  const CrossEg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            width: 350,
            height: 350,
            color: Colors.purple,
            child: Stack(
              alignment: Alignment.topLeft,
              //clipbehaviour hardedge le cut garxa
              clipBehavior: Clip.none,

              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
                Positioned(
                    bottom: -20,
                    right: 0,
                    child: Container(
                      width: 150,
                      height: 150,
                      color: Colors.green,
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
