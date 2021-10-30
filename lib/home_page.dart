import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:miniproject/qibla.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  final menu = [
    "Shalat",
    "Shalat Fardhu",
    "Shalat Sunnah"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
            child: Column(children: [
              Row(children: [
                Text("Panduan Shalat", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700)),
                Expanded(child: Container()),
                InkWell(
                  onTap: () {
                    Get.to(() => MyHomePage());
                  },
                  child: Icon(Icons.assistant_navigation, size: 20),
                ),
              ]),
              SizedBox(height: 15),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 230,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.blue.withOpacity(0.9),
                        Colors.grey.withOpacity(1)
                      ]),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(70),
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                      boxShadow: [
                        BoxShadow(offset: Offset(5, 10), blurRadius: 10, color: Colors.grey.withOpacity(0.9)),
                      ]),
                  child: Container(
                      padding: const EdgeInsets.only(left: 20, top: 20),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                        Text("Reminder",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            )),
                        SizedBox(height: 8),
                        Text("وَاسْتَعِينُوا بِالصَّبْرِ وَالصَّلَاةِ ۚ وَإِنَّهَا لَكَبِيرَةٌ إِلَّا عَلَى الْخَاشِعِينَ",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            )),
                        SizedBox(height: 8),
                        Text("Artinya : Jadikanlah sabar dan sholat sebagai penolongmu. Dan sesungguhnya yang demikian itu sungguh berat kecuali bagi orang-orang yang khusyuk. (QS. Al-Baqarah : 45)",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            )),
                      ]))),
              SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Get.to(() => MyHomePage());
                      },
                      child: Text(menu[index], style: TextStyle(fontSize: 20)),
                    );
                  },
                  itemCount: menu.length,
                ),
              ),
            ])));
  }
}
