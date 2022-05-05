import 'package:flutter/material.dart';

import '../myWidgets/my_ password_field.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
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
          ],
        ),
      )
    );
  }
}