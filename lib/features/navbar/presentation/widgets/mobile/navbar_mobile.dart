import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:here_cycle/core/utils/constants/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class NavBarMobile extends StatelessWidget {
  const NavBarMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ElevatedButton(
          onPressed: () async {
            final Uri launchUri = Uri(
              scheme: 'tel',
              path: '9910872670',
            );
            await launchUrl(launchUri);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromRGBO(249, 60, 123, 1.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0.r),
            ),
          ),
          child: Row(
            children: [
              Text(
                'Contact',
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.bold,
// Color for navigation items
                  fontSize: 16, // Adjust as needed
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 10.h,
        ),
        IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: const Icon(
            Icons.menu,
            color: Color.fromRGBO(61, 28, 34, 1.0),
          ),
        ),
      ],
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
