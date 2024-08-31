// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ColorEntity {
  String? actions;
  String? colorArabicName;
  String? colorName;
  String? colorId;
  ColorEntity({
    this.actions,
    this.colorArabicName,
    this.colorName,
    this.colorId,
  });

  ColorEntity copyWith({
    String? actions,
    String? colorArabicName,
    String? colorName,
    String? colorId,
  }) {
    return ColorEntity(
      actions: actions ?? this.actions,
      colorArabicName: colorArabicName ?? this.colorArabicName,
      colorName: colorName ?? this.colorName,
      colorId: colorId ?? this.colorId,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': actions,
      'colorArabicName': colorArabicName,
      'colorName': colorName,
      'colorId': colorId,
    };
  }

  factory ColorEntity.fromMap(Map<String, dynamic> map) {
    return ColorEntity(
      actions: map['actions'] != null ? map['actions'] as String : null,
      colorArabicName: map['colorArabicName'] != null
          ? map['colorArabicName'] as String
          : null,
      colorName: map['colorName'] != null ? map['colorName'] as String : null,
      colorId: map['colorId'] != null ? map['colorId'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ColorEntity.fromJson(String source) =>
      ColorEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ColorEntity(actions: $actions, colorArabicName: $colorArabicName, colorName: $colorName, colorId: $colorId)';
  }

  @override
  bool operator ==(covariant ColorEntity other) {
    if (identical(this, other)) return true;

    return other.actions == actions &&
        other.colorArabicName == colorArabicName &&
        other.colorName == colorName &&
        other.colorId == colorId;
  }

  @override
  int get hashCode {
    return actions.hashCode ^
        colorArabicName.hashCode ^
        colorName.hashCode ^
        colorId.hashCode;
  }
}
