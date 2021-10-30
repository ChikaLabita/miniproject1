import 'package:miniproject/shalat.dart';
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
      home: SebabUdzur(),
    );
  }
}

class SebabUdzur extends StatefulWidget {
  @override
  _ShalatState createState() => _ShalatState();
}

class _ShalatState extends State<SebabUdzur> {
  final List<String> shalat = [
    "Sebab Udzur Shalat",
    "Syarat Shalat",
    "Rukun Shalat"
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
                    Get.to(() => Shalat());
                  },
                  child: Icon(Icons.arrow_back_ios_new_rounded, size: 20),
                ),
                Text(" Sebab Udzur Shalat", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700, color: Colors.white)),
                Expanded(child: Container()),
              ]),
              SizedBox(height: 28),
              Text("فصل أعْذَارُ الصَّلَاةِ اثُنَانِ: النَّوْمُ وَالنِّسْيَانُ",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  )),
              SizedBox(height: 18),
              Text("Sebab Udzur Shalat ada 2, yaitu : Karena Tidur dan Karena Lupa",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  )),
            ])));
  }
}
