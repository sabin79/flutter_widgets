import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateFormatPage extends StatefulWidget {
  const DateFormatPage({super.key});

  @override
  State<DateFormatPage> createState() => _DateFormatPageState();
}

var date = DateTime.now();

class _DateFormatPageState extends State<DateFormatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "date is : ${DateFormat("jms").format(date)}",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "date is : ${DateFormat("Hms").format(date)}",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "date is : ${DateFormat("MMMMd").format(date)}",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "date is : ${DateFormat("yMMMM").format(date)}",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "date is : ${DateFormat("yMd").format(date)}",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "date is : ${DateFormat("yMMMMEEEEd").format(date)}",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {});
              },
              child: Text("Get TIme"))
        ],
      ),
    );
  }
}
