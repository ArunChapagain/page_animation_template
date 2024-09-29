import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:self_care/widget/horizontal_scroll.dart';
import 'package:self_care/widget/tabs.dart';

class HomePage extends StatefulWidget {
  final VoidCallback reverseAnimation;
 const  HomePage({super.key, required this.reverseAnimation});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181824),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                            onTap: () {
                              widget.reverseAnimation();
                              Navigator.pop(context);
                            },
                            child: Image.asset('assets/images/back.png')),
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
                    Row(
                      children: [
                        Image.asset('assets/images/gallay.png'),
                        const SizedBox(width: 10),
                        Image.asset('assets/images/bell.png'),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
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
                SizedBox(
                  height: 56,
                  child: TextField(
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0x333D3F6D),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Image.asset(
                          'assets/images/search.png',
                          fit: BoxFit.cover,
                          height: 5,
                        ),
                      ),
                      hintText: 'Search Marriage, career, etc.,',
                      hintStyle: TextStyle(
                        fontFamily: GoogleFonts.poppins().fontFamily,
                        fontSize: 16,
                        color: const Color(0xff64658A),
                      ),

                      // prefix: Row(
                      //   mainAxisAlignment: MainAxisAlignment.start,
                      //   children: [
                      //     const SizedBox(width: 5),
                      //     Image.asset(
                      //       'assets/images/search.png',
                      //       fit: BoxFit.cover,
                      //       height: 20,
                      //     ),
                      //     const SizedBox(width: 15),
                      //     Text(
                      //       'Search Marriage, career, etc.,',
                      //       style: TextStyle(
                      //         fontFamily: GoogleFonts.poppins().fontFamily,
                      //         fontSize: 16,
                      //         color: const Color(0xff64658A),
                      //       ),
                      //     )
                      //   ],
                      // ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const TabSelector(),
                const SizedBox(height: 20),
                Text(
                  'Marriage',
                  style: TextStyle(
                    fontSize: 20,
                    color: const Color(0x80FFFFFF),
                    fontFamily: GoogleFonts.poppins().fontFamily,
                  ),
                ),
                const SizedBox(height: 16),
                const HorizontalScroll(),
                const SizedBox(height: 20),
                Text(
                  'Career',
                  style: TextStyle(
                    fontSize: 20,
                    color: const Color(0x80FFFFFF),
                    fontFamily: GoogleFonts.poppins().fontFamily,
                  ),
                ),
                const SizedBox(height: 16),
                const HorizontalScroll(),
                const SizedBox(height: 20),
                Text(
                  'Family',
                  style: TextStyle(
                    fontSize: 20,
                    color: const Color(0x80FFFFFF),
                    fontFamily: GoogleFonts.poppins().fontFamily,
                  ),
                ),
                const SizedBox(height: 16),
                const HorizontalScroll(),
                const SizedBox(height: 20),
                Text(
                  'Health',
                  style: TextStyle(
                    fontSize: 20,
                    color: const Color(0x80FFFFFF),
                    fontFamily: GoogleFonts.poppins().fontFamily,
                  ),
                ),
                const SizedBox(height: 16),
                const HorizontalScroll(),
                const SizedBox(height: 40)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
