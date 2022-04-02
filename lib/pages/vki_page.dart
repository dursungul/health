import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/widgets/input_Text.dart';

class VkiHesapla extends StatefulWidget {
  const VkiHesapla({Key? key}) : super(key: key);

  @override
  State<VkiHesapla> createState() => _VkiHesaplaState();
}

class _VkiHesaplaState extends State<VkiHesapla> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Profile"),
        SizedBox(
          height: 10,
        ),
        Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Inputwidget(text: "Cinsiyet"),
            Inputwidget(text: "Doğum Tarihi")
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Inputwidget(text: "Height"), Inputwidget(text: "Weight")],
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          child: Text("Kilo durumu"),
          color: Colors.white,
        ),
      ],
    );
  }
}
