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
  TextEditingController yasController = new TextEditingController();
  TextEditingController cinsController = new TextEditingController();

  int sayi = 5;
  double kilo = 0;
  double boy = 0;
  double vki = 0;
  int yas = 0;
  String cins = "";
  int kiloclass = 0;

  void Hesapla() {
    setState(() {
      kilo = double.parse(kiloController.value.text);
      boy = double.parse(boyController.value.text);
      yas = int.parse(yasController.value.text);
      cins = cinsController.value.text;
      vki = Kiloindexhesapla(boy, kilo);
      kiloclass = KiloClassBul(vki);
      print("kilo: " + kilo.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Profile"),
        Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            inputAlan("YAS", yasController),
            inputAlan("CİNSİYET", cinsController)
          ],
        ),
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
          child: Text("Kilo durumu : " + "$vki"),
          color: Colors.white,
        ),
        ElevatedButton(
          onPressed: () {
            Hesapla();
          },
          child: Text('Looks like a RaisedButton'),
        )
      ],
    );
  }
}

int Numberop(int num) {
  return num * 2;
}
