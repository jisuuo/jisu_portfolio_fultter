import 'package:flutter/material.dart';
import 'package:jisu_portfolio/common/component/base_layout.dart';
import 'package:jisu_portfolio/common/component/custom_form_field.dart';
import 'package:jisu_portfolio/common/const/colors.dart';

class EmailRegisterPage extends StatelessWidget {
  const EmailRegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const EmailRegisterView();
  }
}

class EmailRegisterView extends StatelessWidget {
  const EmailRegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      useAppBar: true,
      title: '이메일 회원가입',
      widget: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 150),
        child: Column(
          children: [
            CustomTextFormField(
              hintText: '이름 입력',
              onChanged: (value) {},
            ),
            const SizedBox(height: 10),
            CustomTextFormField(
              hintText: '비밀번호 입력',
              onChanged: (value) {},
            ),
            const SizedBox(height: 10),
            CustomTextFormField(
              hintText: '닉네임 입력',
              onChanged: (value) {},
            ),
            const SizedBox(height: 20),
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
                    child: const Text('가입하기', style: TextStyle(fontWeight: FontWeight.bold),),
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
