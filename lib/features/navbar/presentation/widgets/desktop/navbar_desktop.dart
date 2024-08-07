import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:here_cycle/core/utils/constants/colors.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';

class NavBarDesktop extends StatelessWidget {
  const NavBarDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        // Left side with image
        Row(
          children: [
            // SizedBox(
            //   width: 100,
            // ),
            Lottie.asset(
              'assets/lottie/girl1.json', // Replace with your Lottie animation file path
              // width: 30.h, // Adjust width as needed
              height: 40.h, // Adjust height as needed
              fit: BoxFit.contain,
            ),
            // Image.asset(
            //   'assets/appIconLogo.png', // Replace with your image path
            //   height: 40, // Adjust the height as needed
            //   width: 40, // Adjust the width as needed
            // ),
            const SizedBox(width: 10), // Space between image and title
            Text(
              'HerCycle',
              style: GoogleFonts.openSans(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(61, 28, 34, 1.0), // Adjust as per your theme
              ),
            ),
          ],
        ),
        const SizedBox(width: 50),
        // Right side with navigation items
        Row(
          children: [
            _buildNavItem('How it works'),
            const SizedBox(width: 20),
            _buildNavItem('Demo'),
            const SizedBox(width: 20),
            _buildNavItem('About us'),
            const SizedBox(width: 20),
            _buildNavItemC('Contact', onPressed: () async {
              final Uri launchUri = Uri(
                scheme: 'tel',
                path: "9910872670",
              );
              await launchUrl(launchUri);
            }),
          ],
        ),
      ],
    );
  }

  Widget _buildNavItem(String title, {VoidCallback? onPressed}) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: GoogleFonts.openSans(
          fontWeight: FontWeight.bold,
          color: Color.fromRGBO(61, 28, 34, 1.0), // Color for navigation items
          fontSize: 16, // Adjust as needed
        ),
      ),
    );
  }

  Widget _buildNavItemC(String title, {VoidCallback? onPressed}) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: GoogleFonts.openSans(
          fontWeight: FontWeight.bold,
          color: Color.fromRGBO(249, 60, 123, 1.0), // Color for navigation items
          fontSize: 16, // Adjust as needed
        ),
      ),
    );
  }
}
