// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class FuelTypeEntity {
  String? fuelArabicName;
  String? fuelName;
  String? fuelId;
  bool? isActive;
  FuelTypeEntity({
    this.fuelArabicName,
    this.fuelName,
    this.fuelId,
    this.isActive,
  });

  FuelTypeEntity copyWith({
    String? fuelArabicName,
    String? fuelName,
    String? fuelId,
    bool? isActive,
  }) {
    return FuelTypeEntity(
      fuelArabicName: fuelArabicName ?? this.fuelArabicName,
      fuelName: fuelName ?? this.fuelName,
      fuelId: fuelId ?? this.fuelId,
      isActive: isActive ?? this.isActive,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fuelArabicName': fuelArabicName,
      'fuelName': fuelName,
      'fuelId': fuelId,
      'isActive': isActive,
    };
  }

  factory FuelTypeEntity.fromMap(Map<String, dynamic> map) {
    return FuelTypeEntity(
      fuelArabicName: map['fuelArabicName'] != null
          ? map['fuelArabicName'] as String
          : null,
      fuelName: map['fuelName'] != null ? map['fuelName'] as String : null,
      fuelId: map['fuelId'] != null ? map['fuelId'] as String : null,
      isActive: map['isActive'] != null ? map['isActive'] as bool : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory FuelTypeEntity.fromJson(String source) =>
      FuelTypeEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'FuelTypeEntity(fuelArabicName: $fuelArabicName, fuelName: $fuelName, fuelId: $fuelId, isActive: $isActive)';
  }

  @override
  bool operator ==(covariant FuelTypeEntity other) {
    if (identical(this, other)) return true;

    return other.fuelArabicName == fuelArabicName &&
        other.fuelName == fuelName &&
        other.fuelId == fuelId &&
        other.isActive == isActive;
  }

  @override
  int get hashCode {
    return fuelArabicName.hashCode ^
        fuelName.hashCode ^
        fuelId.hashCode ^
        isActive.hashCode;
  }
}
