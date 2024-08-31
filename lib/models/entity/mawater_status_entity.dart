// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class MawaterStatusEntity {
  String? statusArabicName;
  String? statusName;
  String? statusId;
  bool? isActive;
  MawaterStatusEntity({
    this.statusArabicName,
    this.statusName,
    this.statusId,
    this.isActive,
  });

  MawaterStatusEntity copyWith({
    String? statusArabicName,
    String? statusName,
    String? statusId,
    bool? isActive,
  }) {
    return MawaterStatusEntity(
      statusArabicName: statusArabicName ?? this.statusArabicName,
      statusName: statusName ?? this.statusName,
      statusId: statusId ?? this.statusId,
      isActive: isActive ?? this.isActive,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'statusArabicName': statusArabicName,
      'statusName': statusName,
      'statusId': statusId,
      'isActive': isActive,
    };
  }

  factory MawaterStatusEntity.fromMap(Map<String, dynamic> map) {
    return MawaterStatusEntity(
      statusArabicName: map['statusArabicName'] != null
          ? map['statusArabicName'] as String
          : null,
      statusName:
          map['statusName'] != null ? map['statusName'] as String : null,
      statusId: map['statusId'] != null ? map['statusId'] as String : null,
      isActive: map['isActive'] != null ? map['isActive'] as bool : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory MawaterStatusEntity.fromJson(String source) =>
      MawaterStatusEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'MawaterStatusEntity(statusArabicName: $statusArabicName, statusName: $statusName, statusId: $statusId, isActive: $isActive)';
  }

  @override
  bool operator ==(covariant MawaterStatusEntity other) {
    if (identical(this, other)) return true;

    return other.statusArabicName == statusArabicName &&
        other.statusName == statusName &&
        other.statusId == statusId &&
        other.isActive == isActive;
  }

  @override
  int get hashCode {
    return statusArabicName.hashCode ^
        statusName.hashCode ^
        statusId.hashCode ^
        isActive.hashCode;
  }
}
