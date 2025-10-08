import 'package:flutter/material.dart';
import 'package:islamy_app/UI/home/home_screen.dart';
import 'package:islamy_app/UI/home/tabs/quran/Details/sura_details.dart';
import 'package:islamy_app/UI/home/tabs/quran/Details2/sura_details2.dart';
import 'package:islamy_app/UI/introScreen/onboarding_page.dart';
import 'package:islamy_app/Utils/app_theme.dart';
import 'package:islamy_app/provider/most_recent_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => MostRecentProvider(),
    
    child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      initialRoute: OnBoardingPage.routeName,
      routes: {
        OnBoardingPage.routeName: (context) => OnBoardingPage(),
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
        SuraDetailsScreen2.routeName: (context) => SuraDetailsScreen2(),
      },
      themeMode: ThemeMode.dark,
      darkTheme: AppTheme.darkMode,
    );
  }
}
