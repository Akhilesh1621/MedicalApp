import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_app/screen/navbar.dart';
import 'package:medical_app/screen/screens.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText1: GoogleFonts.inter(color: Color(0xFF32313a)),
        ),
        scaffoldBackgroundColor: Color(0xFFfcfeff),
      ),
      home: NavScreen(),
    );
  }
}
