class PrayTimeResponse {
  int? code;
  String? status;
  Data? data;

  PrayTimeResponse({this.code, this.status, this.data});

  PrayTimeResponse.fromJson(Map<String, dynamic> json) {
    if (json["code"] is int) {
      code = json["code"];
    }
    if (json["status"] is String) {
      status = json["status"];
    }
    if (json["data"] is Map) {
      data = json["data"] == null ? null : Data.fromJson(json["data"]);
    }
  }

  static List<PrayTimeResponse> fromList(List<Map<String, dynamic>> list) {
    return list.map(PrayTimeResponse.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["code"] = code;
    _data["status"] = status;
    if (data != null) {
      _data["data"] = data?.toJson();
    }
    return _data;
  }
}

class Data {
  Timings? timings;
  Date? date;
  Meta? meta;

  Data({this.timings, this.date, this.meta});

  Data.fromJson(Map<String, dynamic> json) {
    if (json["timings"] is Map) {
      timings =
          json["timings"] == null ? null : Timings.fromJson(json["timings"]);
    }
    if (json["date"] is Map) {
      date = json["date"] == null ? null : Date.fromJson(json["date"]);
    }
    if (json["meta"] is Map) {
      meta = json["meta"] == null ? null : Meta.fromJson(json["meta"]);
    }
  }

  static List<Data> fromList(List<Map<String, dynamic>> list) {
    return list.map(Data.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (timings != null) {
      _data["timings"] = timings?.toJson();
    }
    if (date != null) {
      _data["date"] = date?.toJson();
    }
    if (meta != null) {
      _data["meta"] = meta?.toJson();
    }
    return _data;
  }
}

class Meta {
  double? latitude;
  double? longitude;
  String? timezone;
  Method? method;
  String? latitudeAdjustmentMethod;
  String? midnightMode;
  String? school;
  Offset? offset;

  Meta(
      {this.latitude,
      this.longitude,
      this.timezone,
      this.method,
      this.latitudeAdjustmentMethod,
      this.midnightMode,
      this.school,
      this.offset});

  Meta.fromJson(Map<String, dynamic> json) {
    if (json["latitude"] is double) {
      latitude = json["latitude"];
    }
    if (json["longitude"] is double) {
      longitude = json["longitude"];
    }
    if (json["timezone"] is String) {
      timezone = json["timezone"];
    }
    if (json["method"] is Map) {
      method = json["method"] == null ? null : Method.fromJson(json["method"]);
    }
    if (json["latitudeAdjustmentMethod"] is String) {
      latitudeAdjustmentMethod = json["latitudeAdjustmentMethod"];
    }
    if (json["midnightMode"] is String) {
      midnightMode = json["midnightMode"];
    }
    if (json["school"] is String) {
      school = json["school"];
    }
    if (json["offset"] is Map) {
      offset = json["offset"] == null ? null : Offset.fromJson(json["offset"]);
    }
  }

  static List<Meta> fromList(List<Map<String, dynamic>> list) {
    return list.map(Meta.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["latitude"] = latitude;
    _data["longitude"] = longitude;
    _data["timezone"] = timezone;
    if (method != null) {
      _data["method"] = method?.toJson();
    }
    _data["latitudeAdjustmentMethod"] = latitudeAdjustmentMethod;
    _data["midnightMode"] = midnightMode;
    _data["school"] = school;
    if (offset != null) {
      _data["offset"] = offset?.toJson();
    }
    return _data;
  }
}

class Offset {
  int? imsak;
  int? fajr;
  int? sunrise;
  int? dhuhr;
  int? asr;
  int? maghrib;
  int? sunset;
  int? isha;
  int? midnight;

  Offset(
      {this.imsak,
      this.fajr,
      this.sunrise,
      this.dhuhr,
      this.asr,
      this.maghrib,
      this.sunset,
      this.isha,
      this.midnight});

  Offset.fromJson(Map<String, dynamic> json) {
    if (json["Imsak"] is int) {
      imsak = json["Imsak"];
    }
    if (json["Fajr"] is int) {
      fajr = json["Fajr"];
    }
    if (json["Sunrise"] is int) {
      sunrise = json["Sunrise"];
    }
    if (json["Dhuhr"] is int) {
      dhuhr = json["Dhuhr"];
    }
    if (json["Asr"] is int) {
      asr = json["Asr"];
    }
    if (json["Maghrib"] is int) {
      maghrib = json["Maghrib"];
    }
    if (json["Sunset"] is int) {
      sunset = json["Sunset"];
    }
    if (json["Isha"] is int) {
      isha = json["Isha"];
    }
    if (json["Midnight"] is int) {
      midnight = json["Midnight"];
    }
  }

  static List<Offset> fromList(List<Map<String, dynamic>> list) {
    return list.map(Offset.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["Imsak"] = imsak;
    _data["Fajr"] = fajr;
    _data["Sunrise"] = sunrise;
    _data["Dhuhr"] = dhuhr;
    _data["Asr"] = asr;
    _data["Maghrib"] = maghrib;
    _data["Sunset"] = sunset;
    _data["Isha"] = isha;
    _data["Midnight"] = midnight;
    return _data;
  }
}

class Method {
  int? id;
  String? name;
  Params? params;
  Location? location;

  Method({this.id, this.name, this.params, this.location});

  Method.fromJson(Map<String, dynamic> json) {
    if (json["id"] is int) {
      id = json["id"];
    }
    if (json["name"] is String) {
      name = json["name"];
    }
    if (json["params"] is Map) {
      params = json["params"] == null ? null : Params.fromJson(json["params"]);
    }
    if (json["location"] is Map) {
      location =
          json["location"] == null ? null : Location.fromJson(json["location"]);
    }
  }

  static List<Method> fromList(List<Map<String, dynamic>> list) {
    return list.map(Method.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["name"] = name;
    if (params != null) {
      _data["params"] = params?.toJson();
    }
    if (location != null) {
      _data["location"] = location?.toJson();
    }
    return _data;
  }
}

class Location {
  double? latitude;
  double? longitude;

  Location({this.latitude, this.longitude});

  Location.fromJson(Map<String, dynamic> json) {
    if (json["latitude"] is double) {
      latitude = json["latitude"];
    }
    if (json["longitude"] is double) {
      longitude = json["longitude"];
    }
  }

  static List<Location> fromList(List<Map<String, dynamic>> list) {
    return list.map(Location.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["latitude"] = latitude;
    _data["longitude"] = longitude;
    return _data;
  }
}

class Params {
  double? fajr;
  double? isha;

  Params({this.fajr, this.isha});

  Params.fromJson(Map<String, dynamic> json) {
    if (json["Fajr"] is double) {
      fajr = json["Fajr"];
    }
    if (json["Isha"] is double) {
      isha = json["Isha"];
    }
  }

  static List<Params> fromList(List<Map<String, dynamic>> list) {
    return list.map(Params.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["Fajr"] = fajr;
    _data["Isha"] = isha;
    return _data;
  }
}

class Date {
  String? readable;
  String? timestamp;
  Hijri? hijri;
  Gregorian? gregorian;

  Date({this.readable, this.timestamp, this.hijri, this.gregorian});

  Date.fromJson(Map<String, dynamic> json) {
    if (json["readable"] is String) {
      readable = json["readable"];
    }
    if (json["timestamp"] is String) {
      timestamp = json["timestamp"];
    }
    if (json["hijri"] is Map) {
      hijri = json["hijri"] == null ? null : Hijri.fromJson(json["hijri"]);
    }
    if (json["gregorian"] is Map) {
      gregorian = json["gregorian"] == null
          ? null
          : Gregorian.fromJson(json["gregorian"]);
    }
  }

  static List<Date> fromList(List<Map<String, dynamic>> list) {
    return list.map(Date.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["readable"] = readable;
    _data["timestamp"] = timestamp;
    if (hijri != null) {
      _data["hijri"] = hijri?.toJson();
    }
    if (gregorian != null) {
      _data["gregorian"] = gregorian?.toJson();
    }
    return _data;
  }
}

class Gregorian {
  String? date;
  String? format;
  String? day;
  Weekday1? weekday;
  Month1? month;
  String? year;
  Designation1? designation;
  bool? lunarSighting;

  Gregorian(
      {this.date,
      this.format,
      this.day,
      this.weekday,
      this.month,
      this.year,
      this.designation,
      this.lunarSighting});

  Gregorian.fromJson(Map<String, dynamic> json) {
    if (json["date"] is String) {
      date = json["date"];
    }
    if (json["format"] is String) {
      format = json["format"];
    }
    if (json["day"] is String) {
      day = json["day"];
    }
    if (json["weekday"] is Map) {
      weekday =
          json["weekday"] == null ? null : Weekday1.fromJson(json["weekday"]);
    }
    if (json["month"] is Map) {
      month = json["month"] == null ? null : Month1.fromJson(json["month"]);
    }
    if (json["year"] is String) {
      year = json["year"];
    }
    if (json["designation"] is Map) {
      designation = json["designation"] == null
          ? null
          : Designation1.fromJson(json["designation"]);
    }
    if (json["lunarSighting"] is bool) {
      lunarSighting = json["lunarSighting"];
    }
  }

  static List<Gregorian> fromList(List<Map<String, dynamic>> list) {
    return list.map(Gregorian.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["date"] = date;
    _data["format"] = format;
    _data["day"] = day;
    if (weekday != null) {
      _data["weekday"] = weekday?.toJson();
    }
    if (month != null) {
      _data["month"] = month?.toJson();
    }
    _data["year"] = year;
    if (designation != null) {
      _data["designation"] = designation?.toJson();
    }
    _data["lunarSighting"] = lunarSighting;
    return _data;
  }
}

class Designation1 {
  String? abbreviated;
  String? expanded;

  Designation1({this.abbreviated, this.expanded});

  Designation1.fromJson(Map<String, dynamic> json) {
    if (json["abbreviated"] is String) {
      abbreviated = json["abbreviated"];
    }
    if (json["expanded"] is String) {
      expanded = json["expanded"];
    }
  }

  static List<Designation1> fromList(List<Map<String, dynamic>> list) {
    return list.map(Designation1.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["abbreviated"] = abbreviated;
    _data["expanded"] = expanded;
    return _data;
  }
}

class Month1 {
  int? number;
  String? en;

  Month1({this.number, this.en});

  Month1.fromJson(Map<String, dynamic> json) {
    if (json["number"] is int) {
      number = json["number"];
    }
    if (json["en"] is String) {
      en = json["en"];
    }
  }

  static List<Month1> fromList(List<Map<String, dynamic>> list) {
    return list.map(Month1.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["number"] = number;
    _data["en"] = en;
    return _data;
  }
}

class Weekday1 {
  String? en;

  Weekday1({this.en});

  Weekday1.fromJson(Map<String, dynamic> json) {
    if (json["en"] is String) {
      en = json["en"];
    }
  }

  static List<Weekday1> fromList(List<Map<String, dynamic>> list) {
    return list.map(Weekday1.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["en"] = en;
    return _data;
  }
}

class Hijri {
  String? date;
  String? format;
  String? day;
  Weekday? weekday;
  Month? month;
  String? year;
  Designation? designation;
  List<String>? holidays;
  List<dynamic>? adjustedHolidays;
  String? method;

  Hijri(
      {this.date,
      this.format,
      this.day,
      this.weekday,
      this.month,
      this.year,
      this.designation,
      this.holidays,
      this.adjustedHolidays,
      this.method});

  Hijri.fromJson(Map<String, dynamic> json) {
    if (json["date"] is String) {
      date = json["date"];
    }
    if (json["format"] is String) {
      format = json["format"];
    }
    if (json["day"] is String) {
      day = json["day"];
    }
    if (json["weekday"] is Map) {
      weekday =
          json["weekday"] == null ? null : Weekday.fromJson(json["weekday"]);
    }
    if (json["month"] is Map) {
      month = json["month"] == null ? null : Month.fromJson(json["month"]);
    }
    if (json["year"] is String) {
      year = json["year"];
    }
    if (json["designation"] is Map) {
      designation = json["designation"] == null
          ? null
          : Designation.fromJson(json["designation"]);
    }
    if (json["holidays"] is List) {
      holidays =
          json["holidays"] == null ? null : List<String>.from(json["holidays"]);
    }
    if (json["adjustedHolidays"] is List) {
      adjustedHolidays = json["adjustedHolidays"] ?? [];
    }
    if (json["method"] is String) {
      method = json["method"];
    }
  }

  static List<Hijri> fromList(List<Map<String, dynamic>> list) {
    return list.map(Hijri.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["date"] = date;
    _data["format"] = format;
    _data["day"] = day;
    if (weekday != null) {
      _data["weekday"] = weekday?.toJson();
    }
    if (month != null) {
      _data["month"] = month?.toJson();
    }
    _data["year"] = year;
    if (designation != null) {
      _data["designation"] = designation?.toJson();
    }
    if (holidays != null) {
      _data["holidays"] = holidays;
    }
    if (adjustedHolidays != null) {
      _data["adjustedHolidays"] = adjustedHolidays;
    }
    _data["method"] = method;
    return _data;
  }
}

class Designation {
  String? abbreviated;
  String? expanded;

  Designation({this.abbreviated, this.expanded});

  Designation.fromJson(Map<String, dynamic> json) {
    if (json["abbreviated"] is String) {
      abbreviated = json["abbreviated"];
    }
    if (json["expanded"] is String) {
      expanded = json["expanded"];
    }
  }

  static List<Designation> fromList(List<Map<String, dynamic>> list) {
    return list.map(Designation.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["abbreviated"] = abbreviated;
    _data["expanded"] = expanded;
    return _data;
  }
}

class Month {
  int? number;
  String? en;
  String? ar;
  int? days;

  Month({this.number, this.en, this.ar, this.days});

  Month.fromJson(Map<String, dynamic> json) {
    if (json["number"] is int) {
      number = json["number"];
    }
    if (json["en"] is String) {
      en = json["en"];
    }
    if (json["ar"] is String) {
      ar = json["ar"];
    }
    if (json["days"] is int) {
      days = json["days"];
    }
  }

  static List<Month> fromList(List<Map<String, dynamic>> list) {
    return list.map(Month.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["number"] = number;
    _data["en"] = en;
    _data["ar"] = ar;
    _data["days"] = days;
    return _data;
  }
}

class Weekday {
  String? en;
  String? ar;

  Weekday({this.en, this.ar});

  Weekday.fromJson(Map<String, dynamic> json) {
    if (json["en"] is String) {
      en = json["en"];
    }
    if (json["ar"] is String) {
      ar = json["ar"];
    }
  }

  static List<Weekday> fromList(List<Map<String, dynamic>> list) {
    return list.map(Weekday.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["en"] = en;
    _data["ar"] = ar;
    return _data;
  }
}

class Timings {
  String? fajr;

  String? dhuhr;
  String? asr;

  String? maghrib;
  String? isha;

  Timings({
    this.fajr,
    this.dhuhr,
    this.asr,
    this.maghrib,
    this.isha,
  });

  Timings.fromJson(Map<String, dynamic> json) {
    if (json["Fajr"] is String) {
      fajr = json["Fajr"];
    }

    if (json["Dhuhr"] is String) {
      dhuhr = json["Dhuhr"];
    }
    if (json["Asr"] is String) {
      asr = json["Asr"];
    }

    if (json["Maghrib"] is String) {
      maghrib = json["Maghrib"];
    }
    if (json["Isha"] is String) {
      isha = json["Isha"];
    }
  }

  static List<Timings> fromList(List<Map<String, dynamic>> list) {
    return list.map(Timings.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["Fajr"] = fajr;

    _data["Dhuhr"] = dhuhr;
    _data["Asr"] = asr;

    _data["Maghrib"] = maghrib;
    _data["Isha"] = isha;

    return _data;
  }
}
