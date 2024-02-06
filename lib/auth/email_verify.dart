import 'package:flutter/material.dart';
import 'package:jisu_portfolio/auth/email_register.dart';
import 'package:jisu_portfolio/common/component/base_layout.dart';
import 'package:jisu_portfolio/common/component/custom_form_field.dart';
import 'package:jisu_portfolio/common/const/colors.dart';

class EmailVerifyPage extends StatelessWidget {
  const EmailVerifyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const EmailVerifyView();
  }
}

class EmailVerifyView extends StatefulWidget {
  const EmailVerifyView({Key? key}) : super(key: key);

  @override
  State<EmailVerifyView> createState() => _EmailVerifyViewState();
}

class _EmailVerifyViewState extends State<EmailVerifyView> {
  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      useAppBar: true,
      title: '이메일 인증',
      widget: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 250),
        child: Column(
          children: [
            CustomTextFormField(
              hintText: '가입할 이메일을 입력해주세요',
              onChanged: (value) {},
            ),
            const SizedBox(height: 50),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: PRIMARY_COLOR,
                      minimumSize: const Size(300, 50),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const EmailRegisterPage(),));
                    },
                    child: const Text('발송', style: TextStyle(fontWeight: FontWeight.bold),),
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
