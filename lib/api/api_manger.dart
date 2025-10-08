import 'dart:convert';


import 'package:intl/intl.dart';

import 'package:http/http.dart' as http;
import 'package:islamy_app/api/response/pray_time_response.dart';
import 'package:islamy_app/api/response/radio_response_model.dart';
import 'package:islamy_app/api/response/receiters_response_model.dart';
import 'package:islamy_app/model/radio_receiter_model.dart';

class ApiManger {
  Future<RadioResponseModel> getRadioData() async {
    try {
      Uri uri = Uri.parse('https://mp3quran.net/api/v3/radios?language=ar');
      var response = await http.get(uri);
      var json = jsonDecode(response.body);

      return RadioResponseModel.fromJson(json);
    } catch (e) {
      throw e;
    }
  }

  Future<ReceitersResponseModel> getReceitersData() async {
    try {
      Uri uri =
          Uri.parse('https://www.mp3quran.net/api/v3/reciters?language=ar');
      var response = await http.get(uri);
      var json = jsonDecode(response.body);

      return ReceitersResponseModel.fromJson(json);
    } catch (e) {
      throw e;
    }
  }

  Future<RadioReceiterModel> getAllData() async {
    try {
      final result = await Future.wait([getRadioData(), getReceitersData()]);

      return RadioReceiterModel(
          radioResponseModel: result[0] as RadioResponseModel,
          receitersResponseModel: result[1] as ReceitersResponseModel);
    } catch (e) {
      throw e;
    }
  }

  Future<PrayTimeResponse> getPrayTime() async {
    String date = DateFormat('dd-MM-yyy').format(DateTime.now())  ;
    try {
      Uri uri = Uri.parse(
          'https://api.aladhan.com/v1/timingsByCity/$date?city=alexandria&country=egypt');
      var response = await http.get(uri);
      var json = jsonDecode(response.body);

      return PrayTimeResponse.fromJson(json);
    } catch (e) {
      throw e;
    }
  }
}
