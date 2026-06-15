import 'package:flutter/material.dart';

import 'register_widgets/register_form.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Center(child: SingleChildScrollView(child: RegisterForm())),
        ),
      ),
    );
  }
}
