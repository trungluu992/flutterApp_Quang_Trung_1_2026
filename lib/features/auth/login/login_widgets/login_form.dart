import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class LoginForm extends ConsumerStatefulWidget {
  const LoginForm({super.key});

  @override
  ConsumerState<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends ConsumerState<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: emailController,
            decoration: const InputDecoration(labelText: 'Email'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter email';
              }
              return null;
            },
          ),

          const SizedBox(height: 16),

          TextFormField(
            controller: passwordController,
            obscureText: true,
            decoration: const InputDecoration(labelText: 'Password'),
            validator: (value) {
              if (value == null || value.length < 6) {
                return 'Minimum 6 characters';
              }
              return null;
            },
          ),

          const SizedBox(height: 24),

          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                context.go('/home');
              }
            },
            child: const Text('Login'),
          ),

          TextButton(
            onPressed: () {
              context.go('/register');
            },
            child: const Text('Create account'),
          ),
        ],
      ),
    );
  }
}
