import 'package:flutter/material.dart';
import 'package:jisu_portfolio/auth/email_register.dart';
import 'package:jisu_portfolio/auth/email_verify.dart';
import 'package:jisu_portfolio/common/component/base_layout.dart';
import 'package:jisu_portfolio/common/component/custom_button.dart';
import 'package:jisu_portfolio/common/component/custom_form_field.dart';
import 'package:jisu_portfolio/common/const/colors.dart';
import 'package:jisu_portfolio/common/const/string.dart';
import 'package:jisu_portfolio/main/view/main_view.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      useAppBar: false,
      widget: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextFormField(
                    hintText: ID_HINT,
                    onChanged: (String value) {},
                  ),
                  const SizedBox(height: 10),
                  CustomTextFormField(
                    onChanged: (value) {},
                    hintText: PW_HINT,
                    obscureText: true,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff22A45D),
                          minimumSize: const Size(200, 50),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const MainPage(),));
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomButton(onPressed: () {}, title: 'Google'),
                        CustomButton(onPressed: () {}, title: 'Naver'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(onPressed: () {}, title: 'Kakao'),
                      CustomButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const EmailVerifyPage(),
                              ),
                            );
                          },
                          title: 'Email'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
