import 'package:api_pro/api.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Insert extends StatefulWidget {
  Insert(this.map);
  Map? map;
  @override
  State<Insert> createState() => _InsertState();
}

class _InsertState extends State<Insert> {
  var formkey = GlobalKey<FormState>();

  var DayController = TextEditingController();
  var CaloriesController = TextEditingController();
  var StepController = TextEditingController();
  var DistanceController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Information",
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
              child: ElevatedButton(
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      insertUser().then((value) => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ApiDemo(),
                          )));
                    }
                  },
                  child: Text("Submit")),
            ),
          ],
        ),
      ),
    );
  }

  Future<dynamic> insertUser() async {
    Map map = {};
    map["Day"] = DayController.text;
    map["Calories"] = CaloriesController.text;
    map["Steps"] = StepController.text;
    map["Distance"] = DistanceController.text;

    var response1 = await http.post(
        Uri.parse("https://6318c834f6b281877c766dcf.mockapi.io/faculty"),
        body: map);
    print(response1.body);
    return response1;
  }
}