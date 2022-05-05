import 'package:flutter/material.dart';

class MyElevatedTextButton extends StatelessWidget {

  final String text;
  final VoidCallback press;
  final Color? color, textColor;
  
  const MyElevatedTextButton({
    Key? key,
    required this.text,
    required this.press,
    this.color,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.73,
      child: ClipRRect(
        //borderRadius: BorderRadius.circular(5),
        child: TextButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                vertical: 20, 
                horizontal: 30,
              ),
            ),
            backgroundColor: MaterialStateProperty.all(color)
          ),
          onPressed: press, 
          child: Text(
            text,
            style: TextStyle(
              letterSpacing: 1,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}