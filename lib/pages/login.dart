import 'package:flutter/material.dart';
import 'package:tm30_test/myWidgets/my_%20password_field.dart';
import 'package:tm30_test/myWidgets/my_text_field.dart';

import '../myWidgets/my_elevated_button.dart';
import '../myWidgets/my_switch_elevated_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    
    Color? color1 = Colors.blue.shade900;
    Color? color2 = Colors.white;

    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    'Login to your account',
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
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SwitchElevatedButton(
                  textColor: Colors.white,
                  text: 'Resident',
                  color: color1,
                  press: () {
                    setState(() {
                      color1 = Colors.blue.shade900;
                      color2 = Colors.white;
                    });
                  }
                ),
                SizedBox(
                  width: size.width * 0.06,
                ),
                SwitchElevatedButton(
                  textColor: Colors.black,
                  text: 'Estate Manager',
                  color: color2,
                  press: () {
                    color1 = Colors.white;
                    color2 = Colors.blue.shade900;
                  },
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            MyTextField(
              text: 'Email Address'
            ),
            MyPasswordField(
              passwordText: 'Password'
            ),
            Container(
              width: size.width * 0.7,
              alignment: Alignment.centerRight,
              child: Text('Forgot Password?'),
            ),
            SizedBox(
              height: 40,
            ),
            MyElevatedTextButton(
                color: Colors.blue.shade900,
                text: 'Log Into Your Account', 
                press: () async {
                  Navigator.pushReplacementNamed(context, '/dashboard');  
                }
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

