import 'package:flutter/material.dart';
import 'package:tm30_test/pages/login.dart';

import '../myWidgets/my_ password_field.dart';
import '../myWidgets/my_elevated_button.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Set up your password',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('Enter your details to log into your account'),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            MyPasswordField(
                  passwordText: 'New Password',
                  onChanged: ((value) {
                    //password = value;
                  }),
            ),
            MyPasswordField(
                  passwordText: 'Confirm Password',
                  onChanged: ((value) {
                    //password = value;
                  }),
            ),
            SizedBox(
              height: 70,
            ),
            MyElevatedTextButton(
                color: Colors.blue.shade900,
                text: 'Set Password', 
                press: () async {
                  Navigator.pushReplacementNamed(context, '/login');  
                }
            ),
            Spacer(),
          ],
        ),
      )
    );
  }
}