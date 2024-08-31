// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class MawaterStructureEntity {
  String? structureArabicName;
  String? structureName;
  String? structureId;
  bool? isActive;
  MawaterStructureEntity({
    this.structureArabicName,
    this.structureName,
    this.structureId,
    this.isActive,
  });

  MawaterStructureEntity copyWith({
    String? structureArabicName,
    String? structureName,
    String? structureId,
    bool? isActive,
  }) {
    return MawaterStructureEntity(
      structureArabicName: structureArabicName ?? this.structureArabicName,
      structureName: structureName ?? this.structureName,
      structureId: structureId ?? this.structureId,
      isActive: isActive ?? this.isActive,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'structureArabicName': structureArabicName,
      'structureName': structureName,
      'structureId': structureId,
      'isActive': isActive,
    };
  }

  factory MawaterStructureEntity.fromMap(Map<String, dynamic> map) {
    return MawaterStructureEntity(
      structureArabicName: map['structureArabicName'] != null
          ? map['structureArabicName'] as String
          : null,
      structureName:
          map['structureName'] != null ? map['structureName'] as String : null,
      structureId:
          map['structureId'] != null ? map['structureId'] as String : null,
      isActive: map['isActive'] != null ? map['isActive'] as bool : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory MawaterStructureEntity.fromJson(String source) =>
      MawaterStructureEntity.fromMap(
          json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'MawaterStructureEntity(structureArabicName: $structureArabicName, structureName: $structureName, structureId: $structureId, isActive: $isActive)';
  }

  @override
  bool operator ==(covariant MawaterStructureEntity other) {
    if (identical(this, other)) return true;

    return other.structureArabicName == structureArabicName &&
        other.structureName == structureName &&
        other.structureId == structureId &&
        other.isActive == isActive;
  }

  @override
  int get hashCode {
    return structureArabicName.hashCode ^
        structureName.hashCode ^
        structureId.hashCode ^
        isActive.hashCode;
  }
}
