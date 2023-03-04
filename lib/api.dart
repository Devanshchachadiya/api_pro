import 'dart:convert';
import 'package:api_pro/bottom_navigation.dart';
import 'package:api_pro/update_delete.dart';
import 'package:api_pro/user_insert.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiDemo extends StatefulWidget {
  @override
  State<ApiDemo> createState() => _ApiDemoState();
}

class _ApiDemoState extends State<ApiDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BottomNavigationPage(),
                  ));
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              size: 25,
              color: Colors.black,
            )),
        title: Text(
          'Your Activity',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Icon(
                Icons.add,
                color: Colors.black,
                size: 25,
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return Insert(null);
                  },
                )).then((value) => (value) {
                      if (value == true) {
                        setState(() {});
                      }
                    });
              },
            ),
          )
        ],
      ),
      body: FutureBuilder<dynamic>(
          builder: (context, snapshot) {
            if (snapshot.data != null && snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) {
                              return Update(snapshot.data![index]);
                            },
                          )).then((value) => (value) {
                                if (value == true) {
                                  setState(() {});
                                }
                              });
                        },
                        child: Card(
                          color: Colors.cyan,
                          margin: EdgeInsets.only(
                              top: 10, bottom: 5, right: 10, left: 10),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 15),
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                        margin: EdgeInsets.only(left: 15),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Day :',
                                              style: TextStyle(
                                                fontSize: 30,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                                snapshot.data![index]['Day']
                                                    .toString(),
                                                style: TextStyle(
                                                    fontSize: 40,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.redAccent
                                                ),),
                                            // Text(snapshot.data![index]
                                            // ['Calories'].toString()),
                                            // Text(
                                            //   snapshot.data![index]['Steps'].toString(),
                                            //   style: TextStyle(
                                            //       fontSize: 20,
                                            //       color: Colors.black),
                                            // ),
                                            //
                                            // Text(snapshot.data![index]['Distance'].toString()),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              );
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
          future: callApi()),
    );
  }

  Future<dynamic> callApi() async {
    http.Response res = await http
        .get(Uri.parse('https://6318c834f6b281877c766dcf.mockapi.io/faculty'));
    return jsonDecode(res.body.toString());
  }
}
