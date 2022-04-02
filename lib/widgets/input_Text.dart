import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Inputwidget extends StatelessWidget {
  final String text;

  const Inputwidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: text,
          ),
        ),
      ),
    );
  }
}
