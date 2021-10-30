import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:miniproject/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShalatSunnah(),
    );
  }
}

class ShalatSunnah extends StatefulWidget {
  @override
  _ShalatState createState() => _ShalatState();
}

class _ShalatState extends State<ShalatSunnah> {
  final List<String> shalatsunnah = [
    "Tahajud",
    "Witir",
    "Tasbih",
    "Dhuha",
    "Hajat"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.blue.withOpacity(0.9),
              Colors.grey.withOpacity(1)
            ])),
            padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
            child: Column(children: [
              Row(children: [
                InkWell(
                  onTap: () {
                    Get.to(() => MyHomePage());
                  },
                  child: Icon(Icons.arrow_back_ios_new_rounded, size: 20),
                ),
                Text(" Shalat Fardhu", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700)),
                Expanded(child: Container()),
              ]),
              SizedBox(height: 15),
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {},
                      child: Text(shalatsunnah[index], style: TextStyle(fontSize: 20)),
                    );
                  },
                  itemCount: shalatsunnah.length,
                ),
              ),
            ])));
  }
}
