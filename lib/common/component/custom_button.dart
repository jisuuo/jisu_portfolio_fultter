import 'package:flutter/material.dart';
import 'package:jisu_portfolio/common/const/colors.dart';

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
      onPressed: widget.onPressed,
      color: PRIMARY_COLOR,
      textColor: Colors.white,
      padding: const EdgeInsets.all(16),
      shape: const CircleBorder(),
      child: Text(widget.title!),
    );
  }
}


