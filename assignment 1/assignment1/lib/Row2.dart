import 'package:flutter/material.dart';

class Row2 extends StatelessWidget {
  const Row2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 200,
          child: Column(
            children: [
              Container(
                width: 150,
                color: Colors.green,
                child: Text("test1"),
              ),
              Flexible(
                child: Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.red,
                    child: Text("test2"),
                  ),
                ),
              ),
              Container(
                height: 150,
                width: 150,
                color: Colors.black,
                child: Text("test3"),
              ),
            ],
          ),
        ),
      ],
    );
  }
}


