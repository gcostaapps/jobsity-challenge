import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'serie_episode_model.dart';
import '../core/serie_image_model.dart';
import 'serie_schedule_model.dart';

class SerieModel {
  final int id;
  final String name;
  final String summary;
  final List<String> genres;
  final SerieScheduleModel schedule;
  final ImageModel image;
  final List<SerieEpisodeModel> episodes;
  SerieModel({
    required this.id,
    required this.name,
    required this.summary,
    required this.genres,
    required this.schedule,
    required this.image,
    required this.episodes,
  });

  SerieModel copyWith({
    int? id,
    String? name,
    String? summary,
    List<String>? genres,
    SerieScheduleModel? schedule,
    ImageModel? image,
    List<SerieEpisodeModel>? episodes,
  }) {
    return SerieModel(
      id: id ?? this.id,
      name: name ?? this.name,
      summary: summary ?? this.summary,
      genres: genres ?? this.genres,
      schedule: schedule ?? this.schedule,
      image: image ?? this.image,
      episodes: episodes ?? this.episodes,
    );
  }

  factory SerieModel.fromMap(Map<String, dynamic> map) {
    return SerieModel(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      summary: map['summary'] ?? '',
      genres: map['genres'] != null ? List<String>.from(map['genres']) : ['-'],
      schedule: SerieScheduleModel.fromMap(map['schedule']),
      image: map['image'] != null
          ? ImageModel.fromMap(map['image'])
          : ImageModel.empty(),
      episodes: map['_embedded'] != null
          ? List<SerieEpisodeModel>.from(map['_embedded']['episodes']
              ?.map((x) => SerieEpisodeModel.fromMap(x)))
          : [],
    );
  }

  factory SerieModel.fromJson(String source) =>
      SerieModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Serie(id: $id, name: $name, summary: $summary, genres: $genres, schedule: $schedule, image: $image, episodes: $episodes)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SerieModel &&
        other.id == id &&
        other.name == name &&
        other.summary == summary &&
        listEquals(other.genres, genres) &&
        other.schedule == schedule &&
        other.image == image &&
        listEquals(other.episodes, episodes);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        summary.hashCode ^
        genres.hashCode ^
        schedule.hashCode ^
        image.hashCode ^
        episodes.hashCode;
  }
}
