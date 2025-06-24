import 'package:flutter/material.dart';
import 'package:islamy_app/UI/home/home_screen.dart';
import 'package:islamy_app/UI/home/tabs/quran/Details/sura_details.dart';
import 'package:islamy_app/Utils/app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
      },
      themeMode: ThemeMode.dark,
      darkTheme: AppTheme.darkMode,
    );
  }
}
