import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:here_cycle/core/utils/constants/colors.dart';
import 'package:lottie/lottie.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          const SizedBox(height: 20),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.close,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Lottie.asset(
              'assets/lottie/girl1.json', // Replace with your Lottie animation file path
              height: 70.h, // Adjust height as needed
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(height: 10.h),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(color: TColors.secondary, borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10.h),
                DrawerListTile3(
                  title: "Home",
                  press: () {},
                ),
                DrawerListTile3(
                  title: "How it works?",
                  press: () {},
                ),
                DrawerListTile3(
                  title: "Demo",
                  press: () {},
                ),
                DrawerListTile3(
                  title: "About us",
                  press: () {},
                ),

                // Add more DrawerListTile3 items as needed
                SizedBox(height: 10.h),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Text(
            " Version: 1.2.0 ",
            style: TextStyle(
              color: Color.fromRGBO(61, 28, 34, 1.0),
            ),
          )
        ],
      ),
    );
  }
}

class DrawerListTile3 extends StatelessWidget {
  const DrawerListTile3({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      title: Text(
        title,
        style: const TextStyle(color: Colors.black54), // Changed to match other text
      ),
    );
  }
}
