import 'package:flutter/material.dart';

class Row3 extends StatelessWidget {
  const Row3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          //expanded ko kam garxa
          fit: FlexFit.tight,
          child: Container(
            margin: new EdgeInsets.only(left: 0, right: 5, top: 0, bottom: 0),
            child: Text("dsad"),
            color: Colors.red,
          ),
        ),
        Flexible(
          fit: FlexFit.tight,
          child: Container(
            child: Text("dsad"),
            color: Colors.black,
          ),
        )
      ],
    );
  }
}
