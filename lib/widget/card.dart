import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 458,
      width: 313,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0XFF1F2033),
        borderRadius: BorderRadius.circular(28),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 177,
            width: 281,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(
              'assets/images/marriage.png',
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '₹999.00',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontFamily: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ).fontFamily,
                ),
              ),
              Row(
                children: [
                  Image.asset('assets/images/star.png'),
                  const SizedBox(width: 5),
                  Text(
                    '4.95/5',
                    style: TextStyle(
                      color: const Color(0XFFFFC700),
                      fontFamily: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ).fontFamily,
                    ),
                  )
                ],
              )
            ],
          ),
          const SizedBox(height: 16),
          Text(
            'Marriage Timing Prediction',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontFamily: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ).fontFamily,
            ),
          ),
          Text(
            'Discover the perfect timing for your marriage through the guidance of Vedic Astrology and an advanced Al-ML model.',
            style: TextStyle(
              fontSize: 14,
              color: const Color(0XFF64658A),
              fontFamily: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ).fontFamily,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Container(
                height: 53,
                width: 94,
                decoration: BoxDecoration(
                  // color: const Color(0XFF7239EA),
                  border: Border.all(
                    color: Colors.white,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(
                          0x267239EA), // The hex value '#7239EA26' converted to Flutter's Color
                      offset: Offset(0, 16), // Corresponds to '0px 16px'
                      blurRadius: 36, // Corresponds to '36px'
                      spreadRadius: -10, // Corresponds to '-10px'
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('View',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ).fontFamily,
                        )),
                    const SizedBox(width: 5),
                    const Icon(
                      Icons.info_outline,
                      size: 16,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              Container(
                height: 53,
                width: 175,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xFF7239EA),
                      offset: Offset(16, 16),
                      blurRadius: 36,
                      spreadRadius: -20,
                    ),
                  ],
                  gradient: const LinearGradient(
                    begin: Alignment
                        .topCenter, // 180 degrees in CSS is from top to bottom
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF7495E8), // #7495E8 at 0%
                      Color(0xFF0C359E), // #0C359E at 100%
                    ],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Purchase',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ).fontFamily,
                        )),
                    const SizedBox(width: 5),
                    const Icon(
                      Icons.shopping_cart_outlined,
                      size: 18,
                      color: Colors.white,
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
// box-shadow: 0px 16px 36px -10px #7239EA26;
