import 'package:api_pro/home.dart';
import 'package:api_pro/profile.dart';
import 'package:flutter/material.dart';

import 'activity.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({Key? key}) : super(key: key);

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int index = 0;
  final pages = [
    HomePage(),
    MyApp(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: pages[
        index
      ],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (int value) {
          setState(() {
            index = value;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home,size: 40,),
              label: '',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.auto_graph_outlined,size: 40,),
              label: ''
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person,size: 40,),
              label: ''
          ),
        ],
      ),

    );
  }
}
