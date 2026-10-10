import 'package:firebase/screens/home_screen.dart';
import 'package:firebase/screens/sign_up_screen.dart';
import 'package:firebase/widgets/button.dart';
import 'package:firebase/widgets/textfield.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                  'Login Screen',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),

                const SizedBox(height: 30),

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

                const SizedBox(height: 20),

                CustomButton(
                  text: 'Login',
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
                      MaterialPageRoute(builder: (context) => SignUpScreen()),
                    );
                  },
                  child: const Text(
                    'Create an account',
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
