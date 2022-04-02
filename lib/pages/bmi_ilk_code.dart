import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  double kilo = 0.0;
  double boy = 0.0;
  double vki = 0.0;
  String vkistring = '';
  TextEditingController inputcontrolleryas = new TextEditingController();
  TextEditingController inputcontrollerkilo = new TextEditingController();
  TextEditingController inputcontrollerboy = new TextEditingController();
  int kiloclass = 0;
  List<Color> renklerdizisi = [
    Colors.grey,
    Colors.grey,
    Colors.grey,
    Colors.grey,
    Colors.grey,
    Colors.grey,
    Colors.grey,
    Colors.grey
  ];

  void _incrementCounter() {
    setState(() {
      _counter++;
      kilo = double.parse(inputcontrollerkilo.value.text);
      boy = double.parse(inputcontrollerboy.value.text);
      vki = Kiloindexhesapla(kilo, boy);
      kiloclass = KiloClassBul(vki);
      vkistring = vki.toStringAsFixed(2);
      //renklerdizisi = kilodegerRenkleri(kiloclass);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: [
                inputAlan('YAŞ', inputcontrolleryas),
                inputAlan('KİLO', inputcontrollerkilo),
                inputAlan('BOY', inputcontrollerboy),
              ],
            ),
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              '$vkistring',
              style: Theme.of(context).textTheme.headline4,
            ),
            KiloTable(kiloclass, renklerdizisi),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

Widget inputAlan(String inputtext, TextEditingController inputController) {
  return Expanded(
    child: Container(
      padding: EdgeInsets.only(left: 15, right: 10),
      child: TextField(
        controller: inputController,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: '$inputtext',
        ),
      ),
    ),
  );
}

Widget KiloTable(int kiloclass, List<Color> renkler) {
  return Padding(
    padding: const EdgeInsets.all(50.0),
    child: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          KiloBilgisi('aşırı zayıf', Colors.grey),
          /*KiloBilgisi('normal zayıf', renkler[1]),
          KiloBilgisi('zayıf', renkler[2]),
          KiloBilgisi('normal', renkler[3]),
          KiloBilgisi('kilolu', renkler[4]),
          KiloBilgisi('obez-1', renkler[5]),
          KiloBilgisi('obez-2', renkler[6]),
          KiloBilgisi('obez-3', renkler[7]),*/
        ],
      ),
    ),
  );
}

Widget KiloBilgisi(String bilgi, Color renk) {
  return Container(
    width: 300,
    color: renk,
    child: Text(bilgi),
  );
}

Color renkDondur(int kiloclass) {
  Color sonuc = Colors.white;
  if (kiloclass == 0) {
    sonuc = Colors.lightBlueAccent;
  } else if (kiloclass == 1) {
    sonuc = Colors.blue;
  } else if (kiloclass == 2) {
    sonuc = Colors.blueAccent;
  } else if (kiloclass == 3) {
    sonuc = Colors.green;
  } else if (kiloclass == 4) {
    sonuc = Colors.yellowAccent;
  } else if (kiloclass == 5) {
    sonuc = Colors.deepOrange;
  } else if (kiloclass == 6) {
    sonuc = Colors.redAccent;
  } else if (kiloclass == 7) {
    sonuc = Colors.red;
  }
  return sonuc;
}

double Kiloindexhesapla(double boy, double kilo) {
  double sonuc = 0;
  sonuc = (kilo * 10000 / (boy * boy));
  return sonuc;
}

int KiloClassBul(double index) {
  int sonuc = 0;
  String kilodurum = '';

  if (index <= 15.9) {
    sonuc = 0;
    kilodurum = "Aşırı Düşük kilolu";
  } else if (index > 15.9 && index <= 16.9) {
    sonuc = 1;
    kilodurum = "Çok Düşük Kilolu";
  } else if (index > 16.9 && index <= 18.4) {
    sonuc = 2;
    kilodurum = "Düşük kilolu";
  } else if (index > 18.4 && index <= 24.9) {
    sonuc = 3;
    kilodurum = "Normal";
  } else if (index > 24.9 && index <= 29.9) {
    sonuc = 4;
    kilodurum = "Kilolu";
  } else if (index > 29.9 && index <= 34.9) {
    sonuc = 5;
    kilodurum = "Obez sınıf-1";
  } else if (index > 34.9 && index <= 39.9) {
    sonuc = 6;
    kilodurum = "Obez sınıf-2";
  } else if (index >= 39.9) {
    sonuc = 7;
    kilodurum = "Obez sınıf-3";
  }
  return sonuc;
}

List<Color> kilodegerRenkleri(int kiloclass) {
  Color baz = Colors.grey;
  List<Color> sonuc = [baz, baz, baz, baz, baz, baz, baz, baz];
  sonuc[kiloclass] = renkDondur(kiloclass);
  return sonuc;
}
