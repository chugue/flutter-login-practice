import 'package:flutter/material.dart';
import 'package:login_app/components/custom_text_form_field.dart';
import 'package:login_app/size.dart';
import 'package:login_app/validator_util.dart';

import '../user_repository.dart';

class CustomJoinForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  final _email = TextEditingController();
  final _password = TextEditingController();
  final _username = TextEditingController();

  CustomJoinForm();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormFiled(
            text: "Email",
            validate: validateEmail(),
            textController: _email,
          ),
          CustomTextFormFiled(
            text: "Password",
            validate: validatePassword(),
            textController: _password,
            isPassword: true,
          ),
          CustomTextFormFiled(
            validate: validateUsername(),
            text: "Username",
            textController: _username,
          ),
          SizedBox(height: large_gap),
          TextButton(
              onPressed: () {
                // formKey가 연결되지 않으면 currentState가 null이다.
                if (_formKey.currentState!.validate()) {
                  // validator가 null을 리턴하면 true가 된다.
                  UserRepository repo = UserRepository();
                  repo.join(_email.text.trim(), _password.text.trim(),
                      _username.text.trim());
                  Navigator.pushNamed(context, "/login");
                }
              },
              child: Text("Join"))
        ],
      ),
    );
  }
}
