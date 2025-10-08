import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsKeys {
  static const String mostRecentKey = 'most_recent';
}

void saveSura(int newSuraIndex) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  List<String> mostRecentIndces =
      prefs.getStringList(SharedPrefsKeys.mostRecentKey) ?? [];

  if (mostRecentIndces.contains('$newSuraIndex')) {
    mostRecentIndces.remove('$newSuraIndex');
      mostRecentIndces.insert(0, '$newSuraIndex');
  }else{
      mostRecentIndces.insert(0, '$newSuraIndex');
  }

  await prefs.setStringList(SharedPrefsKeys.mostRecentKey, mostRecentIndces);
}

Future<List<int>> getMostRecentSuraList() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();

  List<String> mostRecentIndcesString =
      prefs.getStringList(SharedPrefsKeys.mostRecentKey) ?? [];
  List<int> mostRecentIndcesInt =
      mostRecentIndcesString.map((e) => int.parse(e)).toList();

  return mostRecentIndcesInt;
}
