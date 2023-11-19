import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AvailableBooksCardModel extends StatefulWidget {
  const AvailableBooksCardModel({super.key});

  @override
  State<AvailableBooksCardModel> createState() => _CardModelState();
}

class _CardModelState extends State<AvailableBooksCardModel> {
  bool _isElevatedbookscardmodel = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GestureDetector(
            onTap: () {
              setState(() {
                _isElevatedbookscardmodel = !_isElevatedbookscardmodel;
              });
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 200),
              onEnd: () {
                setState(() {
                  _isElevatedbookscardmodel = true;
                });
              },
              height: 110,
              width: double.infinity,
              margin: EdgeInsets.only(top: 10, left: 3, right: 3),
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: _isElevatedbookscardmodel
                      ? [
                          BoxShadow(
                            offset: Offset(10, 10),
                            blurRadius: 5,
                            spreadRadius: 1,
                            color: Colors.grey.shade600,
                          ),
                          BoxShadow(
                              offset: Offset(-5, -5),
                              blurRadius: 4,
                              spreadRadius: 0.5,
                              color: Colors.white)
                        ]
                      : null),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 12, bottom: 8, left: 10),
                    height: 100,
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10)),
                    child: ClipRRect(
                        child: Image.network(
                      "https://imgs.search.brave.com/blo7lY5o_MUwVk4tMAm_9HXrnxSz6Lz4sqNefrk7p_4/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMtbmEuc3NsLWlt/YWdlcy1hbWF6b24u/Y29tL2ltYWdlcy9J/LzUxeUMwWkJXVldM/LmpwZw",
                      fit: BoxFit.contain,
                      filterQuality: FilterQuality.high,
                      color: Colors.grey.shade300,
                      colorBlendMode: BlendMode.multiply,
                    )),
                  ),
                  Container(
                    height: 180,
                    width: 170,
                    margin: EdgeInsets.only(top: 12, bottom: 12, right: 12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        "Book description",
                        style: GoogleFonts.varelaRound(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade700),
                      ),
                    ),
                  ),
                 
                  Container(
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.only(top: 12, bottom: 12, right: 10),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(30)),
                    child: Icon(
                      Icons.add,
                      fill: BorderSide.strokeAlignCenter,
                      color: Colors.grey.shade700,
                      size: 35,
                    ),
                  ),
                ],
              ),
            ),
          )),
          
    );
   
  }
}
