import 'package:flutter/material.dart';
import 'package:filme_flix/screens/signup_screen.dart';

class LoginScreen extends StatefulWidget{
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 48),
              const Center(
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFFF3F3F3),
                    fontFamily: 'Inter',
                  ),
                ),
              ),
              const SizedBox(height: 48),

              // email field
              TextField(
                style: const TextStyle(
                  color: Color(0xFF32A873),
                  fontFamily: 'Roboto',
                ),
                decoration: InputDecoration(
                  labelText: 'Email',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelStyle: const TextStyle(
                    color: Color(0xFF32A873),
                    fontFamily: 'Roboto',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                  hintText: 'example@gmail.c|',
                  hintStyle: const TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF32A873),
                  ),
                  prefixIcon: const Icon(Icons.email_outlined, color: Color(0xFF32A873)), 
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFF32A873)), 
                    borderRadius: BorderRadius.circular(4),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFF32A873)),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  filled: true,
                  fillColor: const Color(0xFF121212),
                ),  
              ),
              const SizedBox(height: 16),

              // password field
              TextField(
                obscureText: !showPassword,
                style: const TextStyle(
                  color: Color(0xFFF3F3F3),
                  fontFamily: 'Roboto',
                ),
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: const TextStyle(
                    color: Color(0xFFF3F3F3), 
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                  prefixIcon: const Icon(Icons.lock_outline, color: Color(0xFF32A873)),
                  suffixIcon: IconButton(
                    icon: Icon(
                      showPassword ? Icons.visibility_off : Icons.visibility,
                      color: Color(0xFFF3F3F3),
                    ),
                    onPressed: () => setState(() => showPassword = !showPassword),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFFF3F3F3)), 
                    borderRadius: BorderRadius.circular(4),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFFF3F3F3)),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
              const SizedBox(height: 8),

              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Inactive',
                  style: TextStyle(
                    color: Colors.white38,
                    fontSize: 12,
                    fontFamily: 'Inter',
                  ),
                ),
              ),
              const SizedBox(height: 17),

              // login button
              SizedBox(
                width: double.infinity,
                height: 52,
                child: ElevatedButton(
                  onPressed: () {}, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF32A873),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Inter',
                      color: Color(0xFF121212),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 16),
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SignUpScreen()),
                     );
                  },
                  child: const Text.rich(
                    TextSpan(
                      text: "Haven’t made an account? ",
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                      children: [
                        TextSpan(
                          text: 'Sign Up',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
            ]
          ),
        ),  
      ),
    );
  }
}