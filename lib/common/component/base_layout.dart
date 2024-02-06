import 'package:flutter/material.dart';
import 'package:jisu_portfolio/common/component/custom_form_field.dart';

class BaseLayout extends StatelessWidget {
  final String? title;
  final bool useAppBar;
  final Widget? widget;
  const BaseLayout({this.useAppBar = false, this.title, this.widget, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: useAppBar
          ? AppBar(
              title: Text(
                title ?? ' ',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              elevation: 0,
            )
          : null,
      body: widget,
    );
  }
}
