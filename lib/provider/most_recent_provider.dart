import 'package:flutter/material.dart';
import 'package:islamy_app/Utils/shared_prefs.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MostRecentProvider extends ChangeNotifier {
  List<int> mostRecentList = [];

  void getMostRecentSuraList() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    List<String> mostRecentIndcesString =
        prefs.getStringList(SharedPrefsKeys.mostRecentKey) ?? [];
    mostRecentList = mostRecentIndcesString.map((e) => int.parse(e)).toList();

    notifyListeners();
  }
}
