import 'package:date_format/date_format.dart';
import 'package:intl/intl.dart';
import 'package:islamy_app/api/response/pray_time_response.dart';

class DateFormater {
  static formatDateGregorian(Gregorian gregorianDate) {
    return '${gregorianDate.day} ${gregorianDate.month?.en?.substring(0, 3)}\n${gregorianDate.year}';
  }

  static formatDateHijri(Hijri hijriDate) {
    return '${hijriDate.day} ${hijriDate.month?.en?.substring(0, 3)}\n${hijriDate.year}';
  }
}

class TimeFormater {
  static String to12hour(String time) {
    DateTime datetime = DateFormat('HH:mm').parse(time);
    return DateFormat('hh:mm\na').format(datetime);
  }

 static Map<String, dynamic> sortPrayTime(Map<String, dynamic> prayTime) {
    DateTime now = DateTime.now();
    //do sort then save data type ..
    var sortedList = prayTime.entries.toList()
      ..sort(
        (a, b) {
          DateTime timeA = DateFormat('HH:mm').parse(a.value);
          DateTime timeB = DateFormat('HH:mm').parse(b.value);
          DateTime dateTimeA =
              DateTime(now.year, now.month, now.day, timeA.hour, timeA.minute);
          DateTime dateTimeB =
              DateTime(now.year, now.month, now.day, timeB.hour, timeB.minute);
          if (dateTimeA.isBefore(now) || dateTimeA.isAtSameMomentAs(now)) {
          dateTimeA=  dateTimeA.add(Duration(days: 1));
          }
          if (dateTimeB.isBefore(now) || dateTimeB.isAtSameMomentAs(now)) {
           dateTimeB= dateTimeB.add(Duration(days: 1));
          }
          return dateTimeA.compareTo(dateTimeB);
        },
      );
    return Map<String, dynamic>.fromEntries(sortedList);
  }
}
