import 'package:alvas_management/login%20and%20register/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import '../register_bloc/register_bloc.dart';
import '../register_bloc/register_events.dart';
import '../register_bloc/register_states.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _isElevatedLogin = true;
  bool _isElevatedRegister = true;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterBloc(),
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 120,
                  child: Center(
                    child: Text(
                      'Register',
                      style: GoogleFonts.concertOne(
                        color: Colors.grey.shade600,
                        fontSize: 50,
                        fontWeight: FontWeight.w500,
                        shadows: [
                          Shadow(
                            color: Colors.grey.shade600,
                            offset: const Offset(10, 10),
                            blurRadius: 50,
                          ),
                          const Shadow(
                            color: Colors.white,
                            offset: Offset(-10, -10),
                            blurRadius: 50,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20, left: 30, right: 30),
                  width: double.infinity,
                  height: 450,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade600,
                        offset: const Offset(4, 4),
                        blurRadius: 15,
                        spreadRadius: 1,
                      ),
                      const BoxShadow(
                        color: Colors.white,
                        offset: Offset(-4, -4),
                        blurRadius: 15,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin:
                            const EdgeInsets.only(left: 20, right: 20, top: 40),
                        width: double.infinity,
                        height: 50,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            label: const Text(' Name'),
                          ),
                        ),
                      ),
                      Container(
                        margin:
                            const EdgeInsets.only(left: 20, right: 20, top: 20),
                        width: double.infinity,
                        height: 50,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            label: const Text(' USN'),
                          ),
                        ),
                      ),
                      Container(
                        margin:
                            const EdgeInsets.only(left: 20, right: 20, top: 20),
                        width: double.infinity,
                        height: 50,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            label: const Text(' Email'),
                          ),
                        ),
                      ),
                      Container(
                        margin:
                            const EdgeInsets.only(left: 20, right: 20, top: 20),
                        width: double.infinity,
                        height: 50,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            label: const Text(' Password'),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text("or"),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 30),
                            width: 50,
                            height: 50,
                            padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade600,
                                offset: const Offset(3, 3),
                                      blurRadius: 15,
                                      spreadRadius: 1),
                                  const BoxShadow(
                                      color: Colors.white,
                                      offset: Offset(-3, -3),
                                      blurRadius: 15,
                                      spreadRadius: 1),
                                ]),
                            child: ClipRRect(
                              child: Image.asset('images/google.png'),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 30),
                            width: 50,
                            height: 50,
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade600,
                                      offset: const Offset(3, 3),
                                      blurRadius: 15,
                                      spreadRadius: 1),
                                  const BoxShadow(
                                      color: Colors.white,
                                      offset: Offset(-3, -3),
                                      blurRadius: 15,
                                      spreadRadius: 1),
                                ]),
                            child: ClipRRect(
                              child: Image.asset('images/meta.png'),
                            ),
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade600,
                                      offset: const Offset(3, 3),
                                      blurRadius: 15,
                                      spreadRadius: 1),
                                  const BoxShadow(
                                      color: Colors.white,
                                      offset: Offset(-3, -3),
                                      blurRadius: 15,
                                      spreadRadius: 1),
                                ]),
                            child: ClipRRect(
                              child: Image.asset('images/twitter.png'),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 30, right: 30, top: 25),
                  width: double.infinity,
                  height: 70,
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              _isElevatedLogin = !_isElevatedLogin;
                            });
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 250),
                            onEnd: () {
                              setState(() {
                                _isElevatedLogin = true;
                              });
                            },
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(25),
                                boxShadow: _isElevatedLogin
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
                            child: Center(
                                child: Text(
                              'Register',
                              style: GoogleFonts.montserrat(
                                  color: Colors.grey.shade800,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            )),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 14),
                        child: Text(
                          'or',
                          style: GoogleFonts.concertOne(
                              color: Colors.grey.shade700, fontSize: 25),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: BlocBuilder<RegisterBloc, RegisterState>(
                          builder: (context, state) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  _isElevatedRegister = !_isElevatedRegister;
                                });
                                BlocProvider.of<RegisterBloc>(context)
                                    .add(RegisterToLoginNavigateEvent());
                                if (state is RegisterToLoginNavigateState) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const LoginPage()));
                                }
                              },
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 250),
                                onEnd: () {
                                  setState(() {
                                    _isElevatedRegister = true;
                                  });
                                },
                                width: double.infinity,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: BorderRadius.circular(25),
                                    boxShadow: _isElevatedRegister
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
                                child: Center(
                                    child: Text(
                                  'Login',
                                  style: GoogleFonts.montserrat(
                                      color: Colors.grey.shade800,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                )),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
