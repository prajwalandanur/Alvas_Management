import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isLogin = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Center(
                  child: Text(
                "Login",
                style: GoogleFonts.concertOne(
                  color: Colors.grey.shade600,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      color: Colors.grey.shade600,
                      offset: const Offset(4, 4),
                      blurRadius: 50,
                    ),
                    const Shadow(
                      color: Colors.white,
                      offset: const Offset(-4, -4),
                      blurRadius: 50,
                    ),
                  ],
                ),
              )),
              Container(
                margin: const EdgeInsets.only(top: 50, left: 30, right: 30),
                width: double.infinity,
                height: 450,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade600,
                          offset: const Offset(4, 4),
                          blurRadius: 10,
                          spreadRadius: 1),
                      const BoxShadow(
                          color: Colors.white,
                          offset: Offset(-4, -4),
                          blurRadius: 10,
                          spreadRadius: 1),
                    ]),
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        margin: const EdgeInsets.only(top: 20),
                        width: 250,
                        height: 250,
                        child: LottieBuilder.asset(
                            'assets/animation_llrhta2x.json'),
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(left: 30, right: 30, top: 20),
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            label: const Text(' Email')),
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(left: 30, right: 30, top: 20),
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            label: const Text('Password')),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _isLogin = !_isLogin;
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 220),
                  onEnd: () {
                    setState(() {
                      _isLogin = true;
                    });
                  },
                  margin: const EdgeInsets.only(top: 50, left: 30, right: 30),
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: _isLogin
                          ? [
                              BoxShadow(
                                  color: Colors.grey.shade600,
                                  offset: const Offset(4, 4),
                                  blurRadius: 15,
                                  spreadRadius: 1),
                              const BoxShadow(
                                  color: Colors.white,
                                  offset: Offset(-4, -4),
                                  blurRadius: 15,
                                  spreadRadius: 1),
                            ]
                          : null),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: Center(
                      child: Text(
                        'Login',
                        style: GoogleFonts.concertOne(
                          color: Colors.grey.shade600,
                          fontSize: 25,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
