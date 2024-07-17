import 'package:demo_app/pages/home_page.dart';
import 'package:demo_app/pages/profile_page.dart';
import 'package:demo_app/pages/second_page.dart';
import 'package:demo_app/pages/settings_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _selectedIndex = 0;

  // method to update the selected index
  void _navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  // pages we have in our app
  final List _pages = [
    HomePage(),
    ProfilePage(),
    SettingsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("1st Page"),
      ),
      drawer: Drawer(
        backgroundColor: Colors.amber,
        child: Column(
          children: [
            DrawerHeader(child: Icon(
              Icons.favorite,
              size: 48,
            )),

            ListTile(
              leading: Icon(Icons.home),
              title: Text("H O M E"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/homepage");
              },
            ),

            ListTile(
              leading: Icon(Icons.settings),
              title: Text("S E T T I N G S"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/settingspage");
              },
            )
          ],
        ),
      ),
      // body: Center(
      //   child: ElevatedButton(
      //     child: Text("Go to Second Page"),
      //     onPressed: () {
      //       // Navigator.push(
      //       //   context,
      //       //   MaterialPageRoute(
      //       //     builder: (context) => SecondPage()
      //       //   )
      //       // );
      //       Navigator.pushNamed(context, '/secondpage');
      //     },
      //   ),
      // ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: [

          //home

          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'
          ),

          //profile

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile'
          ),

          //settings

          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings'
          ),
        ],
      ),
    );
  }
}