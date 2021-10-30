import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:miniproject/home_page.dart';
import 'package:miniproject/sebab_udzur.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Shalat(),
    );
  }
}

class Shalat extends StatefulWidget {
  @override
  _ShalatState createState() => _ShalatState();
}

class _ShalatState extends State<Shalat> {
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
                    Get.to(() => MyHomePage());
                  },
                  child: Icon(Icons.arrow_back_ios_new_rounded, size: 20),
                ),
                Text(" Shalat", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700, color: Colors.white)),
                Expanded(child: Container()),
              ]),
              SizedBox(height: 15),
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Get.to(() => SebabUdzur());
                      },
                      child: Text(shalat[index], style: TextStyle(fontSize: 20, color: Colors.white)),
                    );
                  },
                  itemCount: shalat.length,
                ),
              ),
            ])));
  }
}
