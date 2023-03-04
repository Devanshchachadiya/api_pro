import 'package:api_pro/activity.dart';
import 'package:api_pro/bottom_navigation.dart';
import 'package:api_pro/home.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int index = 0;
  final pages = [
    HomePage(),
    MyApp(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              Column(
                children: [
                  Stack(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        // color: Colors.red,
                        child: Image.asset(
                          'assets/image/yoga.jpg',
                          height: 450,
                        ),
                        alignment: Alignment.topCenter,
                      ),
                      Container(
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_back_outlined,
                            color: Colors.blueGrey,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BottomNavigationPage(),
                              ),
                            );
                          },
                        ),
                        margin: EdgeInsets.only(top: 20, left: 15),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 360),
                        child: Text(
                          'Yoga Program',
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        alignment: Alignment.bottomCenter,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer magna nunc, imperdiet vel velit id, sollicitudin lacinia ex. Sed pharetra lacinia mi nec cursus.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.blueGrey,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blueGrey,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                              ),
                              onPressed: () {},
                              child: Text('40 Min'),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blueGrey,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                              ),
                              onPressed: () {},
                              child: Text('20 Steps'),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blueGrey,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                            ),
                            onPressed: () {},
                            child: Text('400 Cal'),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Container(
                                  child: Text(
                            "Exercise",
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ))),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "See all",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.blueGrey),
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  size: 15,
                                  color: Colors.blueGrey,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Card(
                                child: Container(
                                  child: Image.asset(
                                    "assets/image/e1.png",
                                    height: 70,
                                  ),
                                  margin: EdgeInsets.all(10),
                                ),
                                elevation: 20,
                                shadowColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Exercise 1",
                                        style: TextStyle(
                                          color: Colors.blueGrey,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Text(
                                        "20 Times",
                                        style: TextStyle(
                                          color: Colors.blueGrey,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blueGrey,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                  ),
                                ),
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Text('Play'),
                                    Icon(Icons.play_arrow)
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Card(
                                child: Container(
                                  child: Image.asset(
                                    "assets/image/e2.png",
                                    height: 70,
                                  ),
                                  margin: EdgeInsets.all(10),
                                ),
                                elevation: 20,
                                shadowColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Exercise 2",
                                        style: TextStyle(
                                          color: Colors.blueGrey,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Text(
                                        "10 Times",
                                        style: TextStyle(
                                          color: Colors.blueGrey,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blueGrey,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                  ),
                                ),
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Text('Play'),
                                    Icon(Icons.play_arrow)
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Card(
                                child: Container(
                                  child: Image.asset(
                                    "assets/image/e3.png",
                                    height: 70,
                                  ),
                                  margin: EdgeInsets.all(10),
                                ),
                                elevation: 20,
                                shadowColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Exercise 3",
                                        style: TextStyle(
                                          color: Colors.blueGrey,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Text(
                                        "15 Times",
                                        style: TextStyle(
                                          color: Colors.blueGrey,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blueGrey,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                  ),
                                ),
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Text('Play'),
                                    Icon(Icons.play_arrow)
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: index,
      //   onTap: (int value) {
      //     setState(() {
      //       index = value;
      //     });
      //   },
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.home,
      //         size: 40,
      //       ),
      //       label: '',
      //     ),
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.auto_graph_outlined,
      //           size: 40,
      //         ),
      //         label: ''),
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.person,
      //           size: 40,
      //         ),
      //         label: ''),
      //   ],
      // ),
    );
  }
}
