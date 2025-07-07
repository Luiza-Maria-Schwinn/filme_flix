import 'package:filme_flix/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:filme_flix/screens/login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: Center (
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text (
                'Sign Up',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFFF3F3F3),
                  fontFamily: 'Inter',
                ),
              ),
              const SizedBox(height: 48),

              // email
              TextField(
                style: const TextStyle(
                  color: Color(0xFF32A873),
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
                decoration: InputDecoration(
                  labelText: 'Email',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelStyle: const TextStyle(
                    color: Color(0xFF32A873),
                    fontFamily: 'Roboto',
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  hintText: 'example@gmail.c|',
                  hintStyle: const TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF32A873),
                  ),
                  prefixIcon: const Icon(Icons.email_outlined, color: Color(0xFF32A873)),
                  filled: true,
                  fillColor: const Color(0xFF1E1E1E),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: const BorderSide(color: Color(0xFF32A873)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: const BorderSide(color: Color(0xFF32A873)),
                  ),  
                ), 
              ),
              const SizedBox(height: 16),

              // username
              TextField(
                style: const TextStyle(
                  color: Color(0xFF32A873),
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
                decoration: InputDecoration(
                  labelText: 'Username',
                  labelStyle: const TextStyle(
                    color: Color(0xFFF3F3F3),
                    fontFamily: 'Roboto',
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  hintText: 'Username',
                  hintStyle: const TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFF3F3F3),
                    fontSize: 12,
                  ),
                  prefixIcon: const Icon(Icons.person_outline, color: Color(0xFF32A873)),
                  filled: true,
                  fillColor: const Color(0xFF1E1E1E),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: const BorderSide(color: Color(0xFF32A873)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: const BorderSide(color: Color(0xFF32A873)),
                  ),  
                ),
              ),

              const SizedBox(height: 8),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Inactive',
                  style: TextStyle(
                    color: Color(0xFFF3F3F3),
                    fontSize: 12,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // password
              TextField(
                obscureText: !showPassword,
                style: const TextStyle(
                  color: Color(0xFFF3F3F3),
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: const TextStyle(
                    color: Color(0xFFF3F3F3),
                    fontFamily: 'Roboto',
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  hintText: 'Password',
                  hintStyle: const TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFF3F3F3),
                    fontSize: 12,
                  ),
                  prefixIcon: const Icon(Icons.lock_outline, color: Color(0xFF32A873)),
                  suffixIcon: IconButton(
                    icon: Icon(
                      showPassword ? Icons.visibility_off : Icons.visibility,
                      color: const Color(0xFFF3F3F3),
                    ),
                    onPressed: () => setState(() => showPassword = !showPassword),
                  ),
                  filled: true,
                  fillColor: const Color(0xFF1E1E1E),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: const BorderSide(color: Color(0xFF32A873)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: const BorderSide(color: Color(0xFF32A873)),
                  ),  
                ),
              ),

              const SizedBox(height: 8),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Inactive',
                  style: TextStyle(
                    color: Color(0xFFF3F3F3),
                    fontSize: 12,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),

              const SizedBox(height: 24),  

              // create account button
              SizedBox(
                width: 328,
                height: 52,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const HomeScreen()),
                    );
                  }, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF32A873),
                    foregroundColor: const Color(0xFF121212),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  child: const Text(
                    'Create Account',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF121212),
                      fontFamily: 'Inter',
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // already have an account  
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => const LoginScreen()),
                  );
                }, 
                child: const Text.rich(
                  TextSpan(
                    text: 'Already have an account? ',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                    children: [
                      TextSpan(
                        text: 'Login',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                )
              )
            ],
          )
        ),
      )
    );
  }
}