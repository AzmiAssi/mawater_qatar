// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class FurnishingEntity {
  String? furnishingArabicName;
  String? furnishingName;
  String? furnishingId;
  bool? isActive;
  FurnishingEntity({
    this.furnishingArabicName,
    this.furnishingName,
    this.furnishingId,
    this.isActive,
  });

  FurnishingEntity copyWith({
    String? furnishingArabicName,
    String? furnishingName,
    String? furnishingId,
    bool? isActive,
  }) {
    return FurnishingEntity(
      furnishingArabicName: furnishingArabicName ?? this.furnishingArabicName,
      furnishingName: furnishingName ?? this.furnishingName,
      furnishingId: furnishingId ?? this.furnishingId,
      isActive: isActive ?? this.isActive,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'furnishingArabicName': furnishingArabicName,
      'furnishingName': furnishingName,
      'furnishingId': furnishingId,
      'isActive': isActive,
    };
  }

  factory FurnishingEntity.fromMap(Map<String, dynamic> map) {
    return FurnishingEntity(
      furnishingArabicName: map['furnishingArabicName'] != null
          ? map['furnishingArabicName'] as String
          : null,
      furnishingName: map['furnishingName'] != null
          ? map['furnishingName'] as String
          : null,
      furnishingId:
          map['furnishingId'] != null ? map['furnishingId'] as String : null,
      isActive: map['isActive'] != null ? map['isActive'] as bool : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory FurnishingEntity.fromJson(String source) =>
      FurnishingEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'FurnishingEntity(furnishingArabicName: $furnishingArabicName, furnishingName: $furnishingName, furnishingId: $furnishingId, isActive: $isActive)';
  }

  @override
  bool operator ==(covariant FurnishingEntity other) {
    if (identical(this, other)) return true;

    return other.furnishingArabicName == furnishingArabicName &&
        other.furnishingName == furnishingName &&
        other.furnishingId == furnishingId &&
        other.isActive == isActive;
  }

  @override
  int get hashCode {
    return furnishingArabicName.hashCode ^
        furnishingName.hashCode ^
        furnishingId.hashCode ^
        isActive.hashCode;
  }
}
