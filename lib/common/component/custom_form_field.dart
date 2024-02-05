import 'package:flutter/material.dart';
import 'package:jisu_portfolio/common/const/colors.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final String? errorText;
  final bool obscureText;
  final bool autoFocus;
  final ValueChanged<String>? onChanged;

  const CustomTextFormField({
    this.hintText,
    this.errorText,
    this.obscureText = false,
    this.autoFocus = false,
    required this.onChanged,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final baseBorder = const OutlineInputBorder(
      borderSide: BorderSide(
        color: INPUT_BORDER_COLOR,
        width: 1.0,
      ),
    );

    return TextFormField(
      /// cursor color
      cursorColor: PRIMARY_COLOR,
      /// 비밀번호 입력할 때
      obscureText: obscureText,
      autofocus: autoFocus,
      /// 값이 바뀔때마다 받는 call back
      onChanged: onChanged,

      /// cursor padding
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(20),
        hintText: hintText,
        hintStyle: TextStyle(
          color: BODY_TEXT_COLOR,
          fontSize: 14.0,
        ),
        errorText: errorText,
        fillColor: INPUT_BG_COLOR,
        filled: true,
        /// 모든 input 상태의 기본 스타일 세팅
        border: baseBorder,
        enabledBorder: baseBorder, /// 선택되지 않은 상태
        focusedBorder: baseBorder.copyWith(
          borderSide:  baseBorder.borderSide.copyWith(
            color: PRIMARY_COLOR,
          ),
        ),
      ),
    );
  }
}
