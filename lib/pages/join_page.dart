import 'package:flutter/material.dart';
import 'package:login_app/size.dart';

import '../components/custom_join_form.dart';
import '../components/logo.dart';

class JoinPage extends StatelessWidget {
  const JoinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: ListView(
        children: [
          SizedBox(height: xlarge_gap),
          Logo("Join"),
          CustomJoinForm(),
        ],
      ),
    );
  }
}
