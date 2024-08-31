import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:mawater_qatar/controllers/filter_controller.dart';
import 'package:mawater_qatar/controllers/home_controller.dart';
import 'package:mawater_qatar/controllers/user_controller.dart';
import 'package:mawater_qatar/presentation/SplashScreen/splash_screen.dart';
import 'package:mawater_qatar/presentation/homePage.dart';
import 'package:mawater_qatar/translations/codegen_loader.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'core/theme/theme_constants.dart';
import 'core/theme/theme_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  await Firebase.initializeApp(
      options: const FirebaseOptions(
    apiKey: 'AIzaSyA-HD_VgXXVdulbbpvLscm2EFo8boDltws',
    appId: 'com.example.mawater_qatar',
    messagingSenderId: 'sendid',
    projectId: 'mawaterqatar-17f8a',
    storageBucket: 'mawaterqatar-17f8a.appspot.com',
  ));
  runApp(EasyLocalization(
      supportedLocales: const [Locale("en"), Locale("ar")],
      path: "assets/translations",
      assetLoader: const CodegenLoader(),
      fallbackLocale: const Locale('ar'),
      child: const MyApp()));
}

ThemeManager themeManager = ThemeManager();
FilterController filterController = Get.put(FilterController());
HomeController homeController = Get.put(HomeController());
UserController userController = Get.put(UserController());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    themeManager.addListener(themeListener);
    super.initState();
  }

  @override
  void dispose() {
    themeManager.removeListener(themeListener);
    super.dispose();
  }

  void themeListener() {
    if (mounted) setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mawater Qatar',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: themeManager.themeMode,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      //home: const LightSplashScreenV1Screen(),
      home: const SplashScreen(),
      // home: const SectionsScreen(),
      // home: const AddAdsScreen(),
    );
  }
}
