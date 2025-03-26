import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimePickerPage extends StatefulWidget {
  const DateTimePickerPage({super.key});

  @override
  State<DateTimePickerPage> createState() => _DateTimePickerPageState();
}

class _DateTimePickerPageState extends State<DateTimePickerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("date and time"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text("Select date  : "),
            ElevatedButton(
              onPressed: () async {
                DateTime? datepicked = await showDatePicker(
                  context: context,
                  firstDate: DateTime(2000),
                  initialDate: DateTime.now(),
                  lastDate: DateTime(2026),
                );

                if (datepicked != null) {
                  print("selected Date: ${datepicked.year}");
                  print("selected Date: ${datepicked.month}");
                  print(
                      "selected Date: ${DateFormat("jms").format(datepicked)}");
                }
              },
              child: Text("Select date"),
            ),
            ElevatedButton(
                onPressed: () async {
                  TimeOfDay? pickedTime = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                    initialEntryMode: TimePickerEntryMode.input,
                  );

                  if (pickedTime != null) {
                    print(
                        "selected Time: ${pickedTime.hour} : ${pickedTime.minute} ");
                  }
                },
                child: Text("Select Time"))
          ],
        ),
      ),
    );
  }
}
