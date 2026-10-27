import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const Spacer(flex: 2),
              const Icon(Icons.shopping_cart, size: 90, color: Colors.blue),
              const SizedBox(height: 20),
              const Text('POS Retail Pro', style: TextStyle(
                fontSize: 28, fontWeight: FontWeight.bold)),
              const SizedBox(height: 12),
              const Text('Manage your business\nanytime, anywhere',
                textAlign: TextAlign.center),
              const Spacer(flex: 2),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/login'),
                child: const Text('Get Started'),
              ),
              const SizedBox(height: 30),
              const Text('Version 1.0.0'),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
