import 'package:flutter/material.dart';

class DateAndTime extends StatefulWidget {
  DateAndTime({super.key});

  @override
  State<DateAndTime> createState() => _DateAndTimeState();
}

class _DateAndTimeState extends State<DateAndTime> {
  var date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("date and time"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              height: 200,
              width: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "date is : ${date.hour} : ${date.minute} : ${date.second}",
                    style: TextStyle(fontSize: 20),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {});
                      },
                      child: Text("Get TIme"))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
