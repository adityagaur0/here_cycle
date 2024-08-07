import 'dart:js' as js;
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:here_cycle/core/utils/constants/text_strings.dart';
import 'package:here_cycle/core/utils/theme/theme.dart';
import 'package:here_cycle/features/home/presentation/home_page.dart';

Future<void> main() async {
  js.context.callMethod('addWatsonScript');
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();

  runApp(const App());
}

//....................................APP Router  ................................

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      child: MaterialApp(
        title: TTexts.appName,
        themeMode: ThemeMode.dark,
        theme: TAppTheme.lightTheme,
        darkTheme: TAppTheme.darkTheme,
        debugShowCheckedModeBanner: false,
        builder: EasyLoading.init(),
        home: const HomePage(),
      ),
    );
  }
}
