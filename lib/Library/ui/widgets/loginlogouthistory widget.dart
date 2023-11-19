import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class LogInHistoryCardModel extends StatefulWidget {
  const LogInHistoryCardModel({super.key});

  @override
  State<LogInHistoryCardModel> createState() => _LogInHistoryCardModelState();
}

class _LogInHistoryCardModelState extends State<LogInHistoryCardModel> {

  bool _isElevatedlhistory = true;



  @override
  Widget build(BuildContext context) {
    return    GestureDetector(
                        onTap: () {
                          setState(() {
                            _isElevatedlhistory = !_isElevatedlhistory;
                          });
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 200),
                          onEnd: () {
                            setState(() {
                              _isElevatedlhistory = true;
                            });
                          },
                          height: 100,
                          width: double.infinity,
                          margin: const EdgeInsets.only(left: 10, right: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey.shade300,
                              boxShadow: _isElevatedlhistory
                                  ? [
                                      BoxShadow(
                                          color: Colors.grey.shade600,
                                          offset: const Offset(10, 10),
                                          blurRadius: 15,
                                          spreadRadius: 1),
                                      const BoxShadow(
                                          color: Colors.white,
                                          offset: Offset(-10, -10),
                                          blurRadius: 15,
                                          spreadRadius: 1)
                                    ]
                                  : null),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 5),
                                height: 80,
                                width: 60,
                                // decoration: BoxDecoration(
                                //     border: Border.all(color: Colors.black)),
                                child: Image.asset(
                                  "images/login-logout.png",
                                  fit: BoxFit.cover,
                                  filterQuality: FilterQuality.high,
                                  color: Colors.grey.shade300,
                                  colorBlendMode: BlendMode.multiply,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 5),
                                height: 80,
                                width: 240,
                                child: Center(
                                    child: Text(
                                  "Log-in & Log-out history",
                                  style: GoogleFonts.varelaRound(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey.shade600),
                                )),
                              ),
                              Container(
                                alignment: Alignment.centerRight,
                                child: const Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  size: 30,
                                  color: Colors.grey,
                                ),
                                margin: const EdgeInsets.only(left: 4),
                              )
                            ],
                          ),
                        ),
                      )
    
    ;
  }
}