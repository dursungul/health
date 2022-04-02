import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/pages/bmi_ilk_code.dart';

class VkiHesapla extends StatefulWidget {
  const VkiHesapla({Key? key}) : super(key: key);

  @override
  State<VkiHesapla> createState() => _VkiHesaplaState();
}

class _VkiHesaplaState extends State<VkiHesapla> {
  TextEditingController kiloController = new TextEditingController();
  TextEditingController boyController = new TextEditingController();

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
            inputAlan("KİLO", kiloController),
            inputAlan("BOY", boyController)
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //children: [Inputwidget(text: "Height"), Inputwidget(text: "Weight")],
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
