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
      backgroundColor: Color(0xff181824),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/images/back.png'),
                      // const Icon(Icons.arrow_back_rounded, color: Colors.white),
                      const SizedBox(width: 5),
                      Text(
                        'Premium Reports',
                        style: TextStyle(
                            fontFamily: GoogleFonts.poppins().fontFamily,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Icon(Icons.search, color: Colors.white),
                      SizedBox(width: 10),
                      Icon(Icons.notifications_none, color: Colors.white),
                    ],
                  )
                ],
              ),
              Text(
                'Browse our Premium Reports',
                style: TextStyle(
                  fontFamily: GoogleFonts.poppins().fontFamily,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(45, 61, 63, 109),
                  hintText: 'Search Marriage, career, etc.,',
                  hintStyle: TextStyle(
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      fontSize: 16,
                      color: Color(0xff64658A)),
                  prefixIcon: const Icon(Icons.search, color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
