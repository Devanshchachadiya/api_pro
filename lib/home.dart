import 'package:api_pro/api.dart';
import 'package:flutter/material.dart';

import 'activity.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // int index = 0;
  // final pages = [
  //   HomePage(),
  //   ActivityPage(),
  //   ProfilePage(),
  // ];

  bool _hasBeenPressed = true;
  bool _hasPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Stack(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hello Ponny!",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Find a Workout",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.search,
                      size: 50,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 220),
            decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60))),
            child: Container(
              margin: EdgeInsets.all(15),
              child: Column(
                children: [
                  Expanded(child: Container()),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: [
                        Expanded(
                            child: Container(
                                child: Text(
                          "Today's Activity",
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
                                "Details",
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
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Card(
                          child: Container(
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/image/step.png",
                                  height: 50,
                                ),
                                Text(
                                  "STEPS",
                                  style: TextStyle(color: Colors.blueGrey),
                                ),
                                Text(
                                  "1205",
                                  style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 35),
                                ),
                              ],
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(30),
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Card(
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/image/cal.png",
                                height: 50,
                              ),
                              Text(
                                "CALORIES",
                                style: TextStyle(color: Colors.blueGrey),
                              ),
                              Text(
                                "420",
                                style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 35),
                              )
                            ],
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Card(
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/image/bpm.png",
                                height: 50,
                              ),
                              Text(
                                "BPM",
                                style: TextStyle(color: Colors.blueGrey),
                              ),
                              Text(
                                "88",
                                style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 35),
                              )
                            ],
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(15),
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10,bottom: 10),
                    child: Row(
                      children: [
                        Expanded(
                            child: Container(
                                child: Text(
                          "Daily's Activity",
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
                                "Details",
                                style: TextStyle(
                                    color: Colors.blueGrey, fontSize: 15),
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
                  ),
                  SafeArea(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Card(
                            color: Colors.blueGrey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  child: Text(
                                    "SAT",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  height: 35,
                                  margin: EdgeInsets.only(
                                      left: 20, top: 10, right: 20),
                                ),
                                Text(
                                  "10",
                                  style: TextStyle(
                                    fontSize: 35,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(6),
                                bottomRight: Radius.circular(6),
                              ),
                            ),
                          ),
                          Card(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  child: Text("FRI"),
                                  height: 35,
                                  margin: EdgeInsets.only(
                                      left: 20, top: 10, right: 20),
                                ),
                                Text(
                                  "9",
                                  style: TextStyle(fontSize: 35),
                                )
                              ],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(6),
                                bottomRight: Radius.circular(6),
                              ),
                            ),
                          ),
                          Card(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  child: Text("THU"),
                                  height: 35,
                                  margin: EdgeInsets.only(
                                      left: 20, top: 10, right: 20),
                                ),
                                Text(
                                  "8",
                                  style: TextStyle(fontSize: 35),
                                )
                              ],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(6),
                                bottomRight: Radius.circular(6),
                              ),
                            ),
                          ),
                          Card(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  child: Text("WED"),
                                  height: 35,
                                  margin: EdgeInsets.only(
                                      left: 20, top: 10, right: 20),
                                ),
                                Text(
                                  "7",
                                  style: TextStyle(fontSize: 35),
                                )
                              ],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(6),
                                bottomRight: Radius.circular(6),
                              ),
                            ),
                          ),
                          Card(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  child: Text("TUE"),
                                  height: 35,
                                  margin: EdgeInsets.only(
                                      left: 20, top: 10, right: 20),
                                ),
                                Text(
                                  "6",
                                  style: TextStyle(fontSize: 35),
                                )
                              ],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(6),
                                bottomRight: Radius.circular(6),
                              ),
                            ),
                          ),
                          Card(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  child: Text("MON"),
                                  height: 35,
                                  margin: EdgeInsets.only(
                                      left: 20, top: 10, right: 20),
                                ),
                                Text(
                                  "5",
                                  style: TextStyle(fontSize: 35),
                                )
                              ],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(6),
                                bottomRight: Radius.circular(6),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10,),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            child: Text(
                              "Video Session",
                              style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Details",
                                style: TextStyle(
                                    color: Colors.blueGrey, fontSize: 15),
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
                  ),
                  SafeArea(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Card(
                            margin: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Container(
                                  child: Image.asset(
                                    "assets/image/medi.png",
                                    height: 70,
                                  ),
                                  margin: EdgeInsets.only(
                                      top: 10, left: 10, right: 10, bottom: 10),
                                ),
                                Container(
                                    margin: EdgeInsets.all(10),
                                    child: Text(
                                      "Meditation",
                                      style: TextStyle(
                                          color: Colors.blueGrey, fontSize: 20),
                                    ))
                              ],
                            ),
                            elevation: 20,
                            shadowColor: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                          ),
                          Card(
                            margin: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Container(
                                  child: Image.asset(
                                    "assets/image/y.png",
                                    height: 70,
                                  ),
                                  margin: EdgeInsets.only(
                                      top: 10, left: 10, right: 10, bottom: 10),
                                ),
                                Container(
                                    margin: EdgeInsets.all(10),
                                    child: Text(
                                      "Yoga",
                                      style: TextStyle(
                                          color: Colors.blueGrey, fontSize: 20),
                                    ))
                              ],
                            ),
                            elevation: 20,
                            shadowColor: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                          ),
                          Card(
                            margin: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Container(
                                  child: Image.asset(
                                    "assets/image/exe.png",
                                    height: 70,
                                  ),
                                  margin: EdgeInsets.only(
                                      top: 10, left: 10, right: 10, bottom: 10),
                                ),
                                Container(
                                    margin: EdgeInsets.all(10),
                                    child: Text(
                                      "Exersice",
                                      style: TextStyle(
                                          color: Colors.blueGrey, fontSize: 20),
                                    ))
                              ],
                            ),
                            elevation: 20,
                            shadowColor: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                          ),
                          Card(
                            margin: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Container(
                                  child: Image.asset(
                                    "assets/image/meal.png",
                                    height: 70,
                                  ),
                                  margin: EdgeInsets.only(
                                      top: 10, left: 10, right: 10, bottom: 10),
                                ),
                                Container(
                                    margin: EdgeInsets.all(10),
                                    child: Text(
                                      "Meal",
                                      style: TextStyle(
                                          color: Colors.blueGrey, fontSize: 20),
                                    ))
                              ],
                            ),
                            elevation: 20,
                            shadowColor: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 200,
            margin: EdgeInsets.fromLTRB(10, 120, 10, 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(120),
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: Row(
              children: [
                Expanded(child: Container()),
                Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text(
                              "Legs",
                              style: TextStyle(
                                  color: Colors.blueGrey,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              " and",
                              style: TextStyle(
                                  color: Colors.black12,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: Row(
                            children: [
                              Text(
                                "Glutes",
                                style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                " workout",
                                style: TextStyle(
                                    color: Colors.black12,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.add_chart,
                              color: Colors.blueGrey,
                            ),
                            Text(
                              " Advantage",
                              style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.timer,
                              color: Colors.blueGrey,
                            ),
                            Text(
                              " 40 min",
                              style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blueGrey,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ApiDemo(),));
                                },
                                child: Text('Start Workout'),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 100),
            child: Image.asset(
              "assets/image/xyz.png",
              height: 230,
            ),
          ),
        ],
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
      //       icon: Icon(Icons.home,size: 40,),
      //       label: '',
      //     ),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.auto_graph_outlined,size: 40,),
      //         label: ''
      //     ),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.person,size: 40,),
      //         label: ''
      //     ),
      //   ],
      // ),
    );
  }
}
