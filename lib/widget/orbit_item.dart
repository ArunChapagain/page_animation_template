import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class OrbitItem extends StatelessWidget {
  const OrbitItem({super.key, required this.image, required this.title, required this.onTap});
  final String image;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 195.49.w, // Uncomment this if you want to set a specific width
      height: 75.33.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: onTap,
            child: CircleAvatar(
              radius: 50.w,
              backgroundColor: const Color(0x4D3D3F6D),
              child: Container(
                width: 53.h, // Set consistent width
                height: 53.h, // Set consistent height
                color: const Color(0xff0c359e),
                child: Image.asset(
                  'assets/images/$image.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              color: const Color(0XFF7495E8),
              fontFamily: GoogleFonts.philosopher(
                fontWeight: FontWeight.w400,
              ).fontFamily,
            ),
          ),
        ],
      ),
    );
  }
}
