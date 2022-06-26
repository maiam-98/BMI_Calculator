import 'package:flutter/material.dart';
import 'package:my_app/modules/bmi_calculatord/bmi_result.dart';
import 'modules/bmi_calculatord/bmi.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: const AppBarTheme(
          color: Colors.black,
        ),
      ),
      home:const BmiCalculatorScreen(),
    );
  }
}

