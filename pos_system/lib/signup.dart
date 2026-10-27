import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Create Account')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('Sign up to manage your business'),
            const SizedBox(height: 24),
            const TextField(decoration: InputDecoration(labelText: 'Full Name')),
            const SizedBox(height: 16),
            const TextField(decoration: InputDecoration(labelText: 'Business Name')),
            const SizedBox(height: 16),
            const TextField(keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(labelText: 'Email')),
            const SizedBox(height: 16),
            const TextField(keyboardType: TextInputType.phone,
              decoration: InputDecoration(labelText: 'Phone Number')),
            const SizedBox(height: 16),
            const TextField(obscureText: true,
              decoration: InputDecoration(labelText: 'Password')),
            const SizedBox(height: 16),
            const TextField(obscureText: true,
              decoration: InputDecoration(labelText: 'Confirm Password')),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Demo only. Registration is not connected.'))),
              child: const Text('Sign Up (Demo)'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Already have an account? Login'),
            ),
          ],
        ),
      ),
    );
  }
}
