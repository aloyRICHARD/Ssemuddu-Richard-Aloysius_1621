import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('Login', style: TextStyle(
              fontSize: 28, fontWeight: FontWeight.bold)),
            const Text('Sign in to your account'),
            const SizedBox(height: 24),
            const TextField(decoration: InputDecoration(
              labelText: 'Email or Phone', prefixIcon: Icon(Icons.person_outline))),
            const SizedBox(height: 16),
            const TextField(obscureText: true, decoration: InputDecoration(
              labelText: 'Password', prefixIcon: Icon(Icons.lock_outline))),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Password recovery is not connected.'))),
                child: const Text('Forgot password?'),
              ),
            ),

            SizedBox( width: 20,
           child:  ElevatedButton(
              onPressed: () => Navigator.pushNamedAndRemoveUntil(
                context, '/dashboard', (route) => false),
              child: const Text('Login '),
            ),
            ),

            const SizedBox(height: 24),
            const Text('OR', textAlign: TextAlign.center),
            const SizedBox(height: 16),


        SizedBox(
          width: double.infinity,
          height: 48,
          child: OutlinedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.apple, size: 26),
            label: const Text('Continue with Apple'),
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.black,
              backgroundColor: Colors.white,
              side: const BorderSide(color: Color(0xFFE0E0E0)),

            ),),
        ),

            SizedBox( height:10),

            SizedBox(
              width: double.infinity,
              height: 48,
              child: OutlinedButton.icon(
                onPressed: () {},
                icon: const Text(
                  'G',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                label: const Text(
                  'Continue with Google',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),


            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?"),
                TextButton(
                  onPressed: () {
                  },
                  child: const Text('Sign up'),
                ),
              ],
            )


          ],
        ),
      ),
    );
  }
}
