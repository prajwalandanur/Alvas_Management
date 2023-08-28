import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 30, left: 30, right: 30),
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade600,
                      offset: const Offset(6, 6),
                      blurRadius: 15,
                      spreadRadius: 1),
                  const BoxShadow(
                      color: Colors.white,
                      offset: Offset(-6, -6),
                      blurRadius: 15,
                      spreadRadius: 1),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(
                    height: 80,
                    width: 80,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1682695796954-bad0d0f59ff1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80'),
                    ),
                  ),
                  Container(
                    height: 60,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome',
                            style: GoogleFonts.varelaRound(
                                color: Colors.grey.shade600,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '4AL21CS149',
                            style: GoogleFonts.varelaRound(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(child: const Icon(Icons.arrow_forward_ios_outlined))
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 50, left: 10, right: 10),
              width: double.infinity,
              height: 180,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey.shade300,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade600,
                                offset: const Offset(6, 6),
                                blurRadius: 15,
                                spreadRadius: 1),
                            const BoxShadow(
                                color: Colors.white,
                                offset: Offset(-6, -6),
                                blurRadius: 15,
                                spreadRadius: 1),
                          ]),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'images/academics.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 60,
                            child: Center(
                                child: Text(
                              'Academics',
                              style: GoogleFonts.concertOne(
                                  color: Colors.grey.shade600,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            )),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey.shade300,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade600,
                                offset: const Offset(6, 6),
                                blurRadius: 15,
                                spreadRadius: 1),
                            const BoxShadow(
                                color: Colors.white,
                                offset: Offset(-6, -6),
                                blurRadius: 15,
                                spreadRadius: 1),
                          ]),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Center(
                                  child: Image.asset(
                                'images/librarys.png',
                                fit: BoxFit.fill,
                              )),
                            ),
                          ),
                          SizedBox(
                            height: 60,
                            child: Center(
                                child: Text(
                              'Library',
                              style: GoogleFonts.concertOne(
                                  color: Colors.grey.shade600,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            )),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 50, left: 10, right: 10),
              width: double.infinity,
              height: 180,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey.shade300,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade600,
                                offset: const Offset(6, 6),
                                blurRadius: 15,
                                spreadRadius: 1),
                            const BoxShadow(
                                color: Colors.white,
                                offset: Offset(-6, -6),
                                blurRadius: 15,
                                spreadRadius: 1),
                          ]),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'images/clubs.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 60,
                            child: Center(
                                child: Text(
                              'Club',
                              style: GoogleFonts.concertOne(
                                  color: Colors.grey.shade600,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            )),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey.shade300,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade600,
                                offset: const Offset(6, 6),
                                blurRadius: 15,
                                spreadRadius: 1),
                            const BoxShadow(
                                color: Colors.white,
                                offset: Offset(-6, -6),
                                blurRadius: 15,
                                spreadRadius: 1),
                          ]),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Center(
                                  child: Image.asset(
                                'images/hostel.png',
                                fit: BoxFit.cover,
                              )),
                            ),
                          ),
                          SizedBox(
                            height: 60,
                            child: Center(
                                child: Text(
                              'Hostel',
                              style: GoogleFonts.concertOne(
                                  color: Colors.grey.shade600,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            )),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade600,
                        offset: const Offset(6, 6),
                        blurRadius: 15,
                        spreadRadius: 1),
                    const BoxShadow(
                        color: Colors.white,
                        offset: Offset(-6, -6),
                        blurRadius: 15,
                        spreadRadius: 1),
                  ]),
              child: Center(
                  child: Text(
                'Help and Support',
                style: GoogleFonts.varelaRound(
                    fontSize: 20, fontWeight: FontWeight.bold),
              )),
            )
          ],
        ),
      ),
    );
  }
}
