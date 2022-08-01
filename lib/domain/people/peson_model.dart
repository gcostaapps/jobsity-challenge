import 'dart:convert';

import 'package:flutter/foundation.dart';

import '../core/serie_image_model.dart';
import '../serie/serie_model.dart';

class PersonModel {
  final int id;
  final String name;
  final ImageModel image;
  final List<SerieModel> series;
  PersonModel({
    required this.id,
    required this.name,
    required this.image,
    required this.series,
  });

  PersonModel copyWith({
    int? id,
    String? name,
    ImageModel? image,
    List<SerieModel>? series,
  }) {
    return PersonModel(
      id: id ?? this.id,
      name: name ?? this.name,
      image: image ?? this.image,
      series: series ?? this.series,
    );
  }

  factory PersonModel.fromMap(Map<String, dynamic> map) {
    return PersonModel(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      image: map['image'] != null
          ? ImageModel.fromMap(map['image'])
          : ImageModel.empty(),
      series: map['series'] != null
          ? List<SerieModel>.from(
              map['series']?.map((x) => SerieModel.fromMap(x)))
          : [],
    );
  }

  factory PersonModel.fromJson(String source) =>
      PersonModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PersonModel(id: $id, name: $name, image: $image, series: $series)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PersonModel &&
        other.id == id &&
        other.name == name &&
        other.image == image &&
        listEquals(other.series, series);
  }

  @override
  int get hashCode {
    return id.hashCode ^ name.hashCode ^ image.hashCode ^ series.hashCode;
  }
}
