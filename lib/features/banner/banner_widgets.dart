import 'package:flutter/material.dart';
import 'package:here_cycle/features/banner/widgets/desktop/banner_desktop.dart';
import 'package:here_cycle/features/banner/widgets/mobile/banner_mobile.dart';
import 'package:here_cycle/features/navbar/presentation/widgets/desktop/navbar_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

class BannerWidgets extends StatelessWidget {
  const BannerWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (p0) => const BannerDesktop(),
      tablet: (p0) => const BannerMobile(),
      mobile: (p0) => const BannerMobile(),
    );
  }
}
