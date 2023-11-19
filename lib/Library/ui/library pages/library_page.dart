import 'package:alvas_management/Library/ui/widgets/library%20hours%20widget.dart';
import 'package:alvas_management/Library/ui/widgets/loginlogouthistory%20widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({super.key});

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  bool _isElevatedbooks = true;

  bool _isElevatedlibhelp = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: SingleChildScrollView(
          child: Expanded(
            child: SafeArea(
              child: Column(
                children: [
                  Container(
                    height: 850,
                    width: double.infinity,
                   
                    margin: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 10, left: 10),
                          height: 120,
                          width: double.infinity,
                         
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 25),
                            child: Center(
                                child: Text("Library",
                                    style: GoogleFonts.concertOne(
                                        color: Colors.grey.shade700,
                                        fontSize: 80,
                                        fontWeight: FontWeight.w500,
                                        shadows: [
                                          Shadow(
                                            color: Colors.grey.shade600,
                                            offset: const Offset(5, 5),
                                            blurRadius: 50,
                                          ),
                                          const Shadow(
                                            color: Colors.white,
                                            offset: Offset(-5, -5),
                                            blurRadius: 50,
                                          )
                                        ]))),
                          ),
                        ),
                        const SizedBox(height: 30),
                        LibraryHoursCardModel(),
                  
                        const SizedBox(
                          height: 20),
                  
                        LogInHistoryCardModel(),
                  
                        const SizedBox(height: 20),
                  
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _isElevatedbooks = !_isElevatedbooks;
                            });
                          },
                          child: AnimatedContainer(
                            onEnd: () {
                              setState(() {
                                _isElevatedbooks = true;
                              });
                            },
                            duration: Duration(milliseconds: 200),
                            height: 100,
                            width: double.infinity,
                            margin: const EdgeInsets.only(left: 10, right: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey.shade300,
                                boxShadow: _isElevatedbooks
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
                                  child: Image.asset(
                                    "images/bookslib.png",
                                    filterQuality: FilterQuality.high,
                                    fit: BoxFit.cover,
                                    color: Colors.grey.shade300,
                                    colorBlendMode: BlendMode.multiply,
                                  ),
                                  margin: const EdgeInsets.only(left: 5),
                                  height: 80,
                                  width: 60,
                                  // decoration: BoxDecoration(
                                  //     border: Border.all(color: Colors.black)),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 5),
                                  height: 80,
                                  width: 240,
                                  // decoration: BoxDecoration(
                                  //     border: Border.all(color: Colors.black)),
                                  child: Center(
                                      child: Text(
                                    "Available Books",
                                    style: GoogleFonts.varelaRound(
                                        fontSize: 30,
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
                        ),
                        
                        const SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _isElevatedlibhelp = !_isElevatedlibhelp;
                            });
                          },
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 200),
                            onEnd: () {
                              setState(() {
                                _isElevatedlibhelp = true;
                              });
                            },
                            height: 100,
                            width: double.infinity,
                            margin: const EdgeInsets.only(left: 10, right: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey.shade300,
                                boxShadow: _isElevatedlibhelp
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
                                    "images/libsupport.png",
                                    fit: BoxFit.contain,
                                    filterQuality: FilterQuality.high,
                                    color: Colors.grey.shade300,
                                    colorBlendMode: BlendMode.multiply,
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 5),
                                  height: 80,
                                  width: 240,
                                  // decoration: BoxDecoration(
                                  //     border: Border.all(color: Colors.black)),
                                  child: Center(
                                      child: Text(
                                    "Help and Support",
                                    style: GoogleFonts.varelaRound(
                                        fontSize: 28,
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
