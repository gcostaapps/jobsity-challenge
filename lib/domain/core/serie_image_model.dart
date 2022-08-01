import 'dart:convert';

class ImageModel {
  final String medium;
  final String original;
  ImageModel({
    required this.medium,
    required this.original,
  });

  factory ImageModel.empty() => ImageModel(
        medium: 'https://www.namepros.com/attachments/empty-png.89209/',
        original: 'https://www.namepros.com/attachments/empty-png.89209/',
      );

  ImageModel copyWith({
    String? medium,
    String? original,
  }) {
    return ImageModel(
      medium: medium ?? this.medium,
      original: original ?? this.original,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'medium': medium,
      'original': original,
    };
  }

  factory ImageModel.fromMap(Map<String, dynamic> map) {
    return ImageModel(
      medium: map['medium'] ?? '',
      original: map['original'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ImageModel.fromJson(String source) =>
      ImageModel.fromMap(json.decode(source));

  @override
  String toString() => 'ImageModel(medium: $medium, original: $original)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ImageModel &&
        other.medium == medium &&
        other.original == original;
  }

  @override
  int get hashCode => medium.hashCode ^ original.hashCode;
}
