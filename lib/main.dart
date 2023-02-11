import 'package:flutter/material.dart';
import 'package:restaurant_admin/ui/screens/home_screen.dart';
import 'package:restaurant_admin/ui/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light().copyWith(
        inputDecorationTheme: InputDecorationTheme(
          contentPadding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          filled: true,
          fillColor: Color(
            0xffCECECE,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
      home: HomeScreen(),
    );
  }
}


//git add -A
//git commit -m "Message"
//git push