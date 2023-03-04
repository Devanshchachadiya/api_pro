import 'dart:convert';

import 'package:api_pro/api.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class Update extends StatefulWidget {
  Update(this.map);
  Map? map;

  @override
  State<Update> createState() => _UpdateState();
}

class _UpdateState extends State<Update> {
  var formkey = GlobalKey<FormState>();

  var DayController = TextEditingController();
  var CaloriesController = TextEditingController();
  var StepController = TextEditingController();
  var DistanceController = TextEditingController();

  @override
  void initState() {
    super.initState();
    DayController.text = widget.map == null ? '' : widget.map!['Day'].toString();
    CaloriesController.text = widget.map == null ? '' : widget.map!['Calories'].toString();
    StepController.text = widget.map == null ? '' : widget.map!['Steps'].toString();
    DistanceController.text = widget.map == null ? '' : widget.map!['Distance'].toString();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Activity Information",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              size: 25,
              color: Colors.black,
            )),
        backgroundColor: Colors.white,
      ),
      body: Form(
        key: formkey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(hintText: "Enter day"),
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return "enter days";
                  }
                },
                controller: DayController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(hintText: "Enter calories"),
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return "enter calories";
                  }
                },
                controller: CaloriesController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(hintText: "Enter steps"),
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return "enter steps";
                  }
                },
                controller: StepController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(hintText: "Enter distance"),
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return "upload photo link";
                  }
                },
                controller: DistanceController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: () {
                          if (formkey.currentState!.validate()) {
                            if (widget.map != null) {
                              updatetUser(widget.map!['id']).then((value) =>
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => ApiDemo(),
                                  )));
                            }
                          }
                        },
                        child: Text("update")),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red),
                        onPressed: () {
                          showDeleteAlert(widget.map!['id']);
                        },
                        child: Text("Delete",
                            style:
                            TextStyle(color: Colors.white, fontSize: 15))),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  //update_operation

  Future<dynamic> updatetUser(id) async {
    Map map = {};
    map["Day"] = DayController.text;
    map["Calories"] = CaloriesController.text;
    map["Steps"] = StepController.text;
    map["Distance"] = DistanceController.text;

    var response1 = await http.put(
        Uri.parse("https://6318c834f6b281877c766dcf.mockapi.io/faculty/$id"),
        body: map);
    print(response1.body);
  }

  //delete_operation

  void showDeleteAlert(id) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Are you sure"),
          content: Text("it will be delete parmanetaly"),
          actions: [
            TextButton(
                onPressed: () async {
                  http.Response res = await deleteUser(id);
                  if (res.statusCode == 200) {
                    setState(() {});
                  }
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ApiDemo(),
                  ));
                },
                child: Text("yes")),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("no"))
          ],
        );
      },
    );
  }

  Future<dynamic> deleteUser(id) async {
    var response1 = await http.delete(
        Uri.parse("https://6318c834f6b281877c766dcf.mockapi.io/faculty/$id"));
    print(response1.body);
    return response1;
  }


}