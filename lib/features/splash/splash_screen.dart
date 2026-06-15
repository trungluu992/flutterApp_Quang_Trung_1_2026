import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('SPLASH', style: TextStyle(fontSize: 40)),
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () => context.go('/login'),
              child: const Text('LOGIN'),
            ),

            ElevatedButton(
              onPressed: () => context.go('/register'),
              child: const Text('REGISTER'),
            ),

            ElevatedButton(
              onPressed: () => context.go('/home'),
              child: const Text('HOME'),
            ),
          ],
        ),
      ),
    );
  }
}
