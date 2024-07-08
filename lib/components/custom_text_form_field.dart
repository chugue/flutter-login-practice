import 'package:flutter/material.dart';
import 'package:login_app/size.dart';

class CustomTextFormFiled extends StatelessWidget {
  final textController;
  final validate;
  String text;
  bool isPassword;

  CustomTextFormFiled({
    this.textController,
    required this.validate,
    required this.text,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text),
        SizedBox(height: small_gap),
        TextFormField(
          controller: textController,
          // 1. value가 들어옴
          // 2. value로 유효성 검사하기
          // 3. 리턴
          // null 리턴 -> 유효성 검사 통과
          // 메시지 리턴 -> 유효성 검사 실패
          validator: validate,
          obscureText: isPassword,
          decoration: InputDecoration(
            hintText: "Enter $text",
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        )
      ],
    );
  }
}
