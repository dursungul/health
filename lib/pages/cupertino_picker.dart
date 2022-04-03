import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoPickerWidget extends StatefulWidget {
  const CupertinoPickerWidget({Key? key}) : super(key: key);

  @override
  State<CupertinoPickerWidget> createState() => _CupertinoPickerWidgetState();
}

class _CupertinoPickerWidgetState extends State<CupertinoPickerWidget> {
  final items = ['item1', 'item2', 'item3', 'item4'];
  final index = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 350,
              child: CupertinoPicker(
                itemExtent: 64,
                children: items
                    .map((item) => Center(
                          child: Text(
                            item,
                            style: TextStyle(fontSize: 32),
                          ),
                        ))
                    .toList(),
                onSelectedItemChanged: (index) {
                  setState(() {});
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
