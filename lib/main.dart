import 'package:demo_app/pages/first_page.dart';
import 'package:demo_app/pages/home_page.dart';
import 'package:demo_app/pages/second_page.dart';
import 'package:demo_app/pages/settings_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  void userTapped() {
    print("user tapped!");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Scaffold(
      //   //backgroundColor: Colors.amber[300],
      //   appBar: AppBar(
      //     title: Center(
      //       child: Text("My App Bar")
      //     ),
      //     backgroundColor: Colors.amber[800],
      //     elevation: 0,
      //     leading: Icon(Icons.menu),
      //     actions: [
      //       IconButton(onPressed: () {}, icon: Icon(Icons.logout))
      //     ],
      //   ),
      //   // body: Center(
      //   //   child: Container(
      //   //     height: 300,
      //   //     width: 300,
      //   //     decoration: BoxDecoration(
      //   //       color: Colors.amber[600],
      //   //       // curve the corners bit
      //   //       borderRadius: BorderRadius.circular(20),
      //   //     ),
      //   //     padding: EdgeInsets.all(25),
      //   //     // child: Text(
      //   //     //   "Nithil Sheshan",
      //   //     //   style: TextStyle(
      //   //     //     color: Colors.white,
      //   //     //     fontSize: 28,
      //   //     //     fontWeight: FontWeight.bold
      //   //     //   ),
      //   //     // ),
      //   //     child: Icon(
      //   //       Icons.account_circle_outlined,
      //   //       color: Colors.white,
      //   //       size: 100,
      //   //     ),
      //   //   ),
      //   // ),
      //   // body: Column(
      //   //   crossAxisAlignment: CrossAxisAlignment.center,
      //   //   children: [
      //   //     // 1st box
      //   //     Expanded(
      //   //       child: Container(
      //   //         // height: 200,
      //   //         // width: 200,
      //   //         color: Colors.amber[800],
      //   //       ),
      //   //     ),

      //   //     // 2nd box
      //   //     Expanded(
      //   //       flex: 3,
      //   //       child: Container(
      //   //         // height: 200,
      //   //         // width: 200,
      //   //         color: Colors.amber[500],
      //   //       ),
      //   //     ),

      //   //     // 3rd box
      //   //     Expanded(
      //   //       child: Container(
      //   //         //height: 200,
      //   //         //width: 200,
      //   //         color: Colors.amber[300],
      //   //       ),
      //   //     ),
      //   //   ],
      //   // ),
      //   // body: ListView(
      //   //   scrollDirection: Axis.horizontal,
      //   //   children: [
      //   //     Container(
      //   //         height: 350,
      //   //         width:200,
      //   //         color: Colors.amber[800],
      //   //       ),
      //   //     Container(
      //   //         height: 350,
      //   //         width:200,
      //   //         color: Colors.amber[500],
      //   //       ),
      //   //     Container(
      //   //         height: 350,
      //   //         width:200,
      //   //         color: Colors.amber[200],
      //   //       ),
      //   //   ],
      //   // ),
      //   // body: ListView.builder(
      //   //   itemCount: 10,
      //   //   itemBuilder: (context, index) => ListTile(
      //   //     title: Text(index.toString()),
      //   //   ),
      //   // ),
      //   // body: GridView.builder(
      //   //   itemCount: 64,
      //   //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 10), 
      //   //   itemBuilder: (context, index) => Container(
      //   //     color: Colors.amber,
      //   //     margin: EdgeInsets.all(2),
      //   //   )
      //   // ),
      //   // body: Stack(
      //   //   alignment: Alignment.bottomCenter,
      //   //   children: [
      //   //     Container(
      //   //       height: 300,
      //   //       width: 300,
      //   //       color: Colors.amber[700],
      //   //     ),
      //   //     Container(
      //   //       height: 200,
      //   //       width: 200,
      //   //       color: Colors.amber[500],
      //   //     ),
      //   //     Container(
      //   //       height: 100,
      //   //       width: 100,
      //   //       color: Colors.amber[300],
      //   //     ),
      //   //   ],
      //   // ),
      //   body: Center(
      //     child: GestureDetector(
      //       onTap: () {
      //         userTapped();
      //       },
      //       child: Container(
      //             height: 200,
      //             width: 200,
      //             color: Colors.amber[500],
      //             child: Center(
      //               child: Text(
      //                 "Tap Me"
      //               ),
      //             )
      //           ),
      //     ),
      //   ),
      // ),
      home: FirstPage(),
      routes: {
        '/secondpage' : (context) => SecondPage(),
        '/firstpage' : (context) => FirstPage(),
        '/homepage' : (context) => HomePage(),
        '/settingspage' : (context) => SettingsPage(),
      },
    );
  }
}