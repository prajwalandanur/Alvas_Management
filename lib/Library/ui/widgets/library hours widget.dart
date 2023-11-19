import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class LibraryHoursCardModel extends StatefulWidget {
  const LibraryHoursCardModel({super.key});

  @override
  State<LibraryHoursCardModel> createState() => _LibraryHoursCardModelState();
}

class _LibraryHoursCardModelState extends State<LibraryHoursCardModel> {
  bool _isElevatedLibraryHours = true;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
                        onTap: () {
                          setState(() {
                            _isElevatedLibraryHours = !_isElevatedLibraryHours;
                          });
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 200),
                          onEnd: () {
                            setState(() {
                              _isElevatedLibraryHours = true;
                            });
                          },
                          height: 250,
                          width: double.infinity,
                          margin: const EdgeInsets.only(left: 10, right: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey.shade300,
                              boxShadow: _isElevatedLibraryHours
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
                        ),
                      )
    
    
     ;
  }
}