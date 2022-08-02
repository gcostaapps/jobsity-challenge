import 'dart:convert';

import '../core/serie_image_model.dart';

class SerieEpisodeModel {
  final int id;
  final String name;
  final int season;
  final int number;
  final ImageModel image;
  final String summary;
  SerieEpisodeModel({
    required this.id,
    required this.name,
    required this.season,
    required this.number,
    required this.image,
    required this.summary,
  });

  SerieEpisodeModel copyWith({
    int? id,
    String? name,
    int? season,
    int? number,
    ImageModel? image,
    String? summary,
  }) {
    return SerieEpisodeModel(
      id: id ?? this.id,
      name: name ?? this.name,
      season: season ?? this.season,
      number: number ?? this.number,
      image: image ?? this.image,
      summary: summary ?? this.summary,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'season': season,
      'number': number,
      'image': image.toMap(),
      'summary': summary,
    };
  }

  factory SerieEpisodeModel.fromMap(Map<String, dynamic> map) {
    return SerieEpisodeModel(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? 'Name not available',
      season: map['season']?.toInt() ?? 0,
      number: map['number']?.toInt() ?? 0,
      image: map['image'] != null
          ? ImageModel.fromMap(map['image'])
          : ImageModel.empty(),
      summary: map['summary'] ?? 'Summary not available',
    );
  }

  String toJson() => json.encode(toMap());

  factory SerieEpisodeModel.fromJson(String source) =>
      SerieEpisodeModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'SerieEpisodeModel(id: $id, name: $name, season: $season, number: $number, image: $image, summary: $summary)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SerieEpisodeModel &&
        other.id == id &&
        other.name == name &&
        other.season == season &&
        other.number == number &&
        other.image == image &&
        other.summary == summary;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        season.hashCode ^
        number.hashCode ^
        image.hashCode ^
        summary.hashCode;
  }
}
