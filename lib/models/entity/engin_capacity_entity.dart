// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class EnginCapacityEntity {
  String? capacityId;
  String? capacityArabicName;
  String? capacityName;
  bool? isActive;
  EnginCapacityEntity({
    this.capacityId,
    this.capacityArabicName,
    this.capacityName,
    this.isActive,
  });

  EnginCapacityEntity copyWith({
    String? capacityId,
    String? capacityArabicName,
    String? capacityName,
    bool? isActive,
  }) {
    return EnginCapacityEntity(
      capacityId: capacityId ?? this.capacityId,
      capacityArabicName: capacityArabicName ?? this.capacityArabicName,
      capacityName: capacityName ?? this.capacityName,
      isActive: isActive ?? this.isActive,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityId': capacityId,
      'capacityArabicName': capacityArabicName,
      'capacityName': capacityName,
      'isActive': isActive,
    };
  }

  factory EnginCapacityEntity.fromMap(Map<String, dynamic> map) {
    return EnginCapacityEntity(
      capacityId:
          map['capacityId'] != null ? map['capacityId'] as String : null,
      capacityArabicName: map['capacityArabicName'] != null
          ? map['capacityArabicName'] as String
          : null,
      capacityName:
          map['capacityName'] != null ? map['capacityName'] as String : null,
      isActive: map['isActive'] != null ? map['isActive'] as bool : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory EnginCapacityEntity.fromJson(String source) =>
      EnginCapacityEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'EnginCapacityEntity(capacityId: $capacityId, capacityArabicName: $capacityArabicName, capacityName: $capacityName, isActive: $isActive)';
  }

  @override
  bool operator ==(covariant EnginCapacityEntity other) {
    if (identical(this, other)) return true;

    return other.capacityId == capacityId &&
        other.capacityArabicName == capacityArabicName &&
        other.capacityName == capacityName &&
        other.isActive == isActive;
  }

  @override
  int get hashCode {
    return capacityId.hashCode ^
        capacityArabicName.hashCode ^
        capacityName.hashCode ^
        isActive.hashCode;
  }
}
