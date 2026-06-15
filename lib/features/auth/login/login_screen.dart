import 'package:flutter/material.dart';

import 'login_widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Center(child: SingleChildScrollView(child: LoginForm())),
        ),
      ),
    );
  }
}
