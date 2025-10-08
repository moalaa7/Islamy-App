import 'dart:convert';

import 'package:flutter/services.dart';

class AzkarModel {
  String? category;
  String? count;
  String? description;
  String? reference;
  String? content;

  AzkarModel(
      {this.category,
      this.count,
      this.description,
      this.reference,
      this.content});

  AzkarModel.fromJson(Map<String, dynamic> json) {
    if (json["category"] is String) {
      category = json["category"];
    }
    if (json["count"] is String) {
      count = json["count"];
    }
    if (json["description"] is String) {
      description = json["description"];
    }
    if (json["reference"] is String) {
      reference = json["reference"];
    }
    if (json["content"] is String) {
      content = json["content"];
    }
  }

  static List<AzkarModel> fromList(List<Map<String, dynamic>> list) {
    return list.map(AzkarModel.fromJson).toList();
  }

  static Future <List<AzkarModel>> loadAzkar(String azkarType) async {
    var jsonContant = jsonDecode(
        await rootBundle.loadString('assets/files/Azkar/azkar.json'));
   return jsonContant[azkarType];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["category"] = category;
    _data["count"] = count;
    _data["description"] = description;
    _data["reference"] = reference;
    _data["content"] = content;
    return _data;
  }
}
