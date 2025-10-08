
class ReceitersResponseModel {
  List<Reciters>? reciters;

  ReceitersResponseModel({this.reciters});

  ReceitersResponseModel.fromJson(Map<String, dynamic> json) {
    if(json["reciters"] is List) {
      reciters = json["reciters"] == null ? null : (json["reciters"] as List).map((e) => Reciters.fromJson(e)).toList();
    }
  }

  static List<ReceitersResponseModel> fromList(List<Map<String, dynamic>> list) {
    return list.map(ReceitersResponseModel.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(reciters != null) {
      _data["reciters"] = reciters?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Reciters {
  int? id;
  String? name;
  String? letter;
  String? date;
  List<Moshaf>? moshaf;

  Reciters({this.id, this.name, this.letter, this.date, this.moshaf});

  Reciters.fromJson(Map<String, dynamic> json) {
    if(json["id"] is int) {
      id = json["id"];
    }
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["letter"] is String) {
      letter = json["letter"];
    }
    if(json["date"] is String) {
      date = json["date"];
    }
    if(json["moshaf"] is List) {
      moshaf = json["moshaf"] == null ? null : (json["moshaf"] as List).map((e) => Moshaf.fromJson(e)).toList();
    }
  }

  static List<Reciters> fromList(List<Map<String, dynamic>> list) {
    return list.map(Reciters.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["name"] = name;
    _data["letter"] = letter;
    _data["date"] = date;
    if(moshaf != null) {
      _data["moshaf"] = moshaf?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Moshaf {
  int? id;
  String? name;
  String? server;
  int? surahTotal;
  int? moshafType;
  String? surahList;

  Moshaf({this.id, this.name, this.server, this.surahTotal, this.moshafType, this.surahList});

  Moshaf.fromJson(Map<String, dynamic> json) {
    if(json["id"] is int) {
      id = json["id"];
    }
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["server"] is String) {
      server = json["server"];
    }
    if(json["surah_total"] is int) {
      surahTotal = json["surah_total"];
    }
    if(json["moshaf_type"] is int) {
      moshafType = json["moshaf_type"];
    }
    if(json["surah_list"] is String) {
      surahList = json["surah_list"];
    }
  }

  static List<Moshaf> fromList(List<Map<String, dynamic>> list) {
    return list.map(Moshaf.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["name"] = name;
    _data["server"] = server;
    _data["surah_total"] = surahTotal;
    _data["moshaf_type"] = moshafType;
    _data["surah_list"] = surahList;
    return _data;
  }
}