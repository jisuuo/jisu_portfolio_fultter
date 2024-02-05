import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final String title;
  final Color? color;
  final VoidCallback? onPressed;
  const CustomButton({required this.title, this.onPressed, this.color, Key? key})
      : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      color: Color(0xff22A45D),
      textColor: Colors.white,
      child: Icon(
        Icons.camera_alt,
        size: 30,
      ),
      padding: EdgeInsets.all(16),
      shape: CircleBorder(),
    );
  }
}


