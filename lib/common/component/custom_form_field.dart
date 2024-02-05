import 'package:flutter/material.dart';

class CustomFormField extends StatefulWidget {
  final String? hintText;
  const CustomFormField({this.hintText, Key? key}) : super(key: key);

  @override
  State<CustomFormField> createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
        hintText: widget.hintText ?? ' ',
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}

