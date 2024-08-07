import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:here_cycle/core/utils/constants/colors.dart';
import 'package:here_cycle/core/utils/helpers/helper_functions.dart';
import 'package:here_cycle/features/banner/banner_widgets.dart';
import 'package:here_cycle/features/drawer/side_drawer_desktop.dart';
import 'package:here_cycle/features/drawer/side_drawer_mobile.dart';
import 'package:here_cycle/features/navbar/presentation/navbar_widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var deviceType = getDeviceType(MediaQuery.of(context).size);
    return Scaffold(
      backgroundColor: Colors.transparent, // Transparent background for the Scaffold
      drawer: const SideMenu(),
      body: SafeArea(
        child: PageView(
          scrollDirection: Axis.vertical,
          children: [
            // First page with pink background
            Container(
              color: const Color.fromRGBO(255, 201, 215, 1),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Content for the first page
                    SizedBox(
                      height: 20.h,
                    ),
                    const NavBarWidgets(),
                    SizedBox(
                      height: 20.h,
                    ),
                    const home_page_wgt(), // Content widget for the first page
                    SizedBox(
                      height: 40.h,
                    ),
                  ],
                ),
              ),
            ),
            // Second page with white background
            // Container(
            //   color: Colors.white,
            //   child: SingleChildScrollView(
            //     child: Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         // Content for the second page
            //         SizedBox(
            //           height: 20.h,
            //         ),
            //         // Add your widgets for the second page here
            //         SizedBox(
            //           height: 40.h,
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

class home_page_wgt extends StatelessWidget {
  const home_page_wgt({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var deviceType = getDeviceType(MediaQuery.of(context).size);

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      padding: (DeviceScreenType.desktop == deviceType) ? const EdgeInsets.only(left: 10, right: 20) : const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // SizedBox(
          //   height: 100.h,
          // ),
          const BannerWidgets()
        ],
      ),
    );
  }

  Padding heading(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 18.0.h,
          fontWeight: FontWeight.w600,
          color: TColors.light,
        ),
      ),
    );
  }
}
