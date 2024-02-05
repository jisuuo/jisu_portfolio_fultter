import 'package:flutter/material.dart';
import 'package:jisu_portfolio/common/component/base_layout.dart';
import 'package:jisu_portfolio/common/component/custom_button.dart';
import 'package:jisu_portfolio/common/component/custom_form_field.dart';
import 'package:jisu_portfolio/common/const/colors.dart';
import 'package:jisu_portfolio/common/const/string.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      useAppBar: false,
      widget: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextFormField(
                    hintText: ID_HINT,
                    onChanged: (String value) {  },
                  ),
                  const SizedBox(height: 10),
                  CustomTextFormField(
                    onChanged: (value) {

                    },
                    hintText: PW_HINT,
                    obscureText: true,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text('Login With', style: TextStyle(color: BODY_TEXT_COLOR),),
            const SizedBox(height: 20),
            const Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(title: 'Sign up with Google'),
                      CustomButton(title: '네이버'),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(title: '카카오'),
                      CustomButton(title: '이메일'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
