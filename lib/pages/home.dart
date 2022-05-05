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
              height: 20,
            ),
            Text('Set up your password'),
            Text('Enter your details to log into your account'),
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
            MyElevatedTextButton(
                text: 'Sign up', 
                press: () async {
                  Navigator.pushReplacementNamed(context, 'pages/login');  
                }
            ),
            Spacer(),
          ],
        ),
      )
    );
  }
}