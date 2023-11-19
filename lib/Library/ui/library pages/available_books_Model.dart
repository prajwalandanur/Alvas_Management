import 'package:alvas_management/Library/ui/widgets/Available%20books%20widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class AvailableBooks extends StatefulWidget {
  const AvailableBooks({super.key});

  @override
  State<AvailableBooks> createState() => _AvailableBooksState();
}

class _AvailableBooksState extends State<AvailableBooks> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 75,
                  width: 350,
                  margin: EdgeInsets.all(5),
                  child: Center(
                      child: Text("Available Books",
                          style: GoogleFonts.varelaRound(
                              fontSize: 40,
                              color: Colors.grey.shade700,
                              fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow(
                                  color: Colors.grey.shade600,
                                  offset: const Offset(10, 10),
                                  blurRadius: 35,
                                ),
                                const Shadow(
                                  color: Colors.white,
                                  offset: Offset(-10, -10),
                                  blurRadius: 35,
                                )
                              ]))),
                ),
                Container(
                  height: 750,
                  width: 480,
                  margin: EdgeInsets.only(top: 2, left: 5, right: 5),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 5, right: 5),
                        child: TextField(
                          textCapitalization: TextCapitalization.words,
                          cursorColor: Colors.grey.shade700,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                    color: Colors.grey.shade700, width: 2)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.grey.shade700, width: 2),
                                borderRadius: BorderRadius.circular(20)),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 15),
                            hintText: " Enter book name",
                            hintStyle: GoogleFonts.varelaRound(
                                color: Colors.grey.shade700,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                            labelText: "Search",
                            labelStyle: GoogleFonts.varelaRound(
                                color: Colors.grey.shade900,
                                fontWeight: FontWeight.bold),
                            suffixIcon: Icon(
                              Icons.search,
                              color: Colors.grey.shade700,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Stack(
                          children: [
                            Container(
                              color: Colors.grey.shade300,
                              height: 700,
                              width: 480,
                              child: ListView.builder(
                                scrollDirection:
                                    axisDirectionToAxis(AxisDirection.down),
                                itemCount: 40,
                                itemBuilder:
                                    ((BuildContext context, int index) {
                                  return AvailableBooksCardModel();
                                }),
                              ),
                            ),
                            Positioned(
                              height: 70,
                              width: 70,
                              right: 10,
                              bottom: 20,
                              child: FloatingActionButton(onPressed: () {},backgroundColor: Colors.amber.shade50,
                              
                              child: Icon(Icons.add_shopping_cart,size: 30,color: Colors.grey.shade700,),)
                              ,
                            )
                          ],
                        ),
                      ),
                    ],
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
