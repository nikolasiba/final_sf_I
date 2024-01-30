import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

import 'presentation/login_page/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('es', 'es_CO'), // español,
          Locale('en', 'en_us'), // English,
        ],
        debugShowCheckedModeBanner: false,
        title: 'The Cats App',
        initialRoute: '/home',
        getPages: [
          GetPage(name: '/home', page: () => LoginPage()),
        ]);
  }
}
