import 'package:flutter/material.dart';

class SwitchElevatedButton extends StatelessWidget {

  final Color? color;
  final Color textColor;
  final VoidCallback? press;
  final String? text;

  const SwitchElevatedButton({
    Key? key,
    this.color,
    this.press,
    this.text,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.33,
      height: 50,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
        ),
        onPressed: press, 
        child: Text(
          text!,
          style: TextStyle(
            color: textColor,
          ),
        ),
      ),
    );
  }
}