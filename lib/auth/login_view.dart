import 'package:flutter/material.dart';
import 'package:jisu_portfolio/common/component/base_layout.dart';
import 'package:jisu_portfolio/common/component/custom_form_field.dart';
import 'package:jisu_portfolio/common/const/string.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const BaseLayout(
      useAppBar: false,
      widget: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomFormField(
                hintText: ID_HINT,
              ),
              SizedBox(height: 10),
              CustomFormField(
                hintText: PW_HINT,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
