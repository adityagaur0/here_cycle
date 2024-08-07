import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:here_cycle/core/utils/constants/colors.dart';
import 'package:lottie/lottie.dart';

class BannerDesktop extends StatelessWidget {
  const BannerDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color.fromRGBO(250, 250, 250, 1), Color.fromRGBO(255, 240, 240, 1)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.only(left: 50.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Navigate Menstrual Health with Expert Insights and Personalized Guidance.',
                    style: GoogleFonts.openSans(
                      fontSize: 6.sp, // Larger font size for better visibility
                      fontWeight: FontWeight.w600, // Slightly bolder text
                      color: TColors.webText,
                    ),
                  ),
                  SizedBox(height: 4.h), // Increased space for better separation
                  Text(
                    'Know your body. Own your health.',
                    style: GoogleFonts.openSans(
                      fontSize: 4.sp, // Larger font size for better visibility
                      fontWeight: FontWeight.w400, // Lighter text
                      color: Color.fromRGBO(163, 114, 128, 1),
                    ),
                  ),
                  SizedBox(height: 10), // Space before the button
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "Learn More",
                      style: TextStyle(),
                    ),
                    style: ElevatedButton.styleFrom(
                      // primary: Color.fromRGBO(255, 54, 121, 1), // Button color
                      // onPrimary: Colors.white, // Text color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0.r),
                      ),
                      backgroundColor: Color.fromARGB(255, 254, 145, 174),
                      padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
                      textStyle: TextStyle(
                        fontSize: 3.sp, // Adjust the text size
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Lottie.asset(
              'assets/lottie/girl2.json',
              height: 400.h,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
