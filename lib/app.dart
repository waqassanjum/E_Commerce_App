import 'package:e_commerce/features/shop/screens/home/widgets/home.dart';

import 'package:get/get.dart';

import 'utils/theme/theme.dart';
import 'package:flutter/material.dart';

// .. Use this Class to setup themes, initial Binding, any animation and much more ....

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: const HomeScreen(),
      // home: const OnBoardingScreen(),
    );
  }
}
