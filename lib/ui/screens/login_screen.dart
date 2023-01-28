import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant_admin/ui/widgets/custom_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Good",
                  style: GoogleFonts.italianno(
                    textStyle: TextStyle(fontSize: 170),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Taste",
                  style: GoogleFonts.italianno(
                    textStyle: TextStyle(fontSize: 170),
                  ),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Manager ID",
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Icon(
                      Icons.person,
                      size: 25,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "Password",
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Icon(
                        Icons.lock,
                        size: 25,
                      ),
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Icon(
                        Icons.visibility_off_outlined,
                        size: 25,
                      ),
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("Forgot Password?"),
              ),
              SizedBox(
                height: 10,
              ),
              CustomButton(
                label: "Sign In",
                onPressed: () {},
                color: Color(0xff006758),
              )
            ],
          ),
        ),
      ),
    );
  }
}
