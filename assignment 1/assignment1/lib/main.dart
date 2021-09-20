import 'package:assignment1/Row2.dart';
import 'package:assignment1/Row3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Assignment'),
        ),
        body: Column(
          children: [Row1(), Row2(), Divider(), Row3()],
        ),
      ),
    );
  }
}

class Row1 extends StatelessWidget {
  const Row1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 175,
            width: 175,
            color: Colors.red,

            // center using align
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "Section 1",
              ),
            ),
          ),
        ),
        //center using textalign
        Expanded(
          child: Container(
            height: 175,
            width: 175,
            color: Colors.blue,
            child: Center(
              child: Text(
                "Section 2",
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            height: 175,
            width: 175,
            color: Colors.green,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(5, 100, 5, 5),
              child: Text(
                "Section 3",
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
