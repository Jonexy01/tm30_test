import 'package:flutter/material.dart';
import 'my_text_field_container.dart';

class MyTextField extends StatelessWidget {

  final String? text;
  final ValueChanged? onChanged;

  const MyTextField({
    Key? key, 
    this.onChanged,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyTextFieldContainer(
      child: TextFormField(
        //validator: ((value) => value!.length < 6 ? 'Enter a minimum of 6 characters' : null),
        onChanged: onChanged,
        obscureText: true,
        decoration: InputDecoration(
          hintText: text,
          // icon: Icon(
          //   Icons.lock,
          //   color: Colors.amber,
          // ),
          // suffixIcon: Icon(
          //   Icons.visibility, 
          //   color: Colors.black,
          // ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 1,
              color: Colors.black,
            )
          )
          //border: InputBorder.none,
        ),
      ),
    );
  }
}