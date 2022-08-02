import 'dart:convert';

import 'package:flutter/foundation.dart';

class SerieScheduleModel {
  final String time;
  final List<String> days;
  SerieScheduleModel({
    required this.time,
    required this.days,
  });

  SerieScheduleModel copyWith({
    String? time,
    List<String>? days,
  }) {
    return SerieScheduleModel(
      time: time ?? this.time,
      days: days ?? this.days,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'time': time,
      'days': days,
    };
  }

  factory SerieScheduleModel.fromMap(Map<String, dynamic> map) {
    return SerieScheduleModel(
      time: map['time'] ?? 'Time not available',
      days: map['days'] != null
          ? List<String>.from(map['days'])
          : ['Days not available'],
    );
  }

  String toJson() => json.encode(toMap());

  factory SerieScheduleModel.fromJson(String source) =>
      SerieScheduleModel.fromMap(json.decode(source));

  @override
  String toString() => 'SerieScheduleModel(time: $time, days: $days)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SerieScheduleModel &&
        other.time == time &&
        listEquals(other.days, days);
  }

  @override
  int get hashCode => time.hashCode ^ days.hashCode;
}
