import 'package:flutter/material.dart';
import 'package:widget_learning/date_and_time/screen/date_format.dart';
import 'package:widget_learning/date_and_time/screen/dateandtime.dart';

import 'date_and_time/screen/date_time_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: DateAndTime(),
     // home: DateFormatPage(),
      home: DateTimePickerPage(),
    );
  }
}
