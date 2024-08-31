// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class WheelMovementEntity {
  String? wheelMovementId;
  String? wheelMovementName;
  String? wheelMovementArabicName;
  WheelMovementEntity({
    this.wheelMovementId,
    this.wheelMovementName,
    this.wheelMovementArabicName,
  });

  WheelMovementEntity copyWith({
    String? wheelMovementId,
    String? wheelMovementName,
    String? wheelMovementArabicName,
  }) {
    return WheelMovementEntity(
      wheelMovementId: wheelMovementId ?? this.wheelMovementId,
      wheelMovementName: wheelMovementName ?? this.wheelMovementName,
      wheelMovementArabicName:
          wheelMovementArabicName ?? this.wheelMovementArabicName,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'wheelMovementId': wheelMovementId,
      'wheelMovementName': wheelMovementName,
      'wheelMovementArabicName': wheelMovementArabicName,
    };
  }

  factory WheelMovementEntity.fromMap(Map<String, dynamic> map) {
    return WheelMovementEntity(
      wheelMovementId: map['wheelMovementId'] != null
          ? map['wheelMovementId'] as String
          : null,
      wheelMovementName: map['wheelMovementName'] != null
          ? map['wheelMovementName'] as String
          : null,
      wheelMovementArabicName: map['wheelMovementArabicName'] != null
          ? map['wheelMovementArabicName'] as String
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory WheelMovementEntity.fromJson(String source) =>
      WheelMovementEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'WheelMovementEntity(wheelMovementId: $wheelMovementId, wheelMovementName: $wheelMovementName, wheelMovementArabicName: $wheelMovementArabicName)';

  @override
  bool operator ==(covariant WheelMovementEntity other) {
    if (identical(this, other)) return true;

    return other.wheelMovementId == wheelMovementId &&
        other.wheelMovementName == wheelMovementName &&
        other.wheelMovementArabicName == wheelMovementArabicName;
  }

  @override
  int get hashCode =>
      wheelMovementId.hashCode ^
      wheelMovementName.hashCode ^
      wheelMovementArabicName.hashCode;
}
