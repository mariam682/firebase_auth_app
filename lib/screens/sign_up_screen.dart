import 'package:firebase/screens/home_screen.dart';
import 'package:firebase/screens/login_screen.dart';
import 'package:firebase/widgets/button.dart';
import 'package:firebase/widgets/textfield.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Create Account',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),

                const SizedBox(height: 30),

                CustomTextField(
                  controller: emailController,
                  hintText: 'Enter your name',
                  labelText: 'Name',
                  prefixIcon: Icons.email,
                  keyboardType: TextInputType.emailAddress,
                ),

                const SizedBox(height: 15),
                CustomTextField(
                  controller: emailController,
                  hintText: 'Enter your email',
                  labelText: 'Email',
                  prefixIcon: Icons.email,
                  keyboardType: TextInputType.emailAddress,
                ),

                const SizedBox(height: 15),

                CustomTextField(
                  controller: passwordController,
                  hintText: 'Enter your password',
                  labelText: 'Password',
                  prefixIcon: Icons.lock,
                  obscureText: true,
                ),

                const SizedBox(height: 15),

                CustomTextField(
                  controller: passwordController,
                  hintText: 'Enter your password',
                  labelText: 'Confirm Password',
                  prefixIcon: Icons.lock,
                  obscureText: true,
                ),

                const SizedBox(height: 20),

                CustomButton(
                  text: 'Create Account',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                ),

                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  child: const Text(
                    'Already have an account? Login',

                    style: TextStyle(color: Color.fromARGB(255, 77, 119, 154)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
