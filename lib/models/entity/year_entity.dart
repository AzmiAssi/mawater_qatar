// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class YearEntity {
  String? yearId;
  String? yearName;
  String? yearArabicName;
  bool? isActive;
  YearEntity({
    this.yearId,
    this.yearName,
    this.yearArabicName,
    this.isActive,
  });

  YearEntity copyWith({
    String? yearId,
    String? yearName,
    String? yearArabicName,
    bool? isActive,
  }) {
    return YearEntity(
      yearId: yearId ?? this.yearId,
      yearName: yearName ?? this.yearName,
      yearArabicName: yearArabicName ?? this.yearArabicName,
      isActive: isActive ?? this.isActive,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'yearId': yearId,
      'yearName': yearName,
      'yearArabicName': yearArabicName,
      'isActive': isActive,
    };
  }

  factory YearEntity.fromMap(Map<String, dynamic> map) {
    return YearEntity(
      yearId: map['yearId'] != null ? map['yearId'] as String : null,
      yearName: map['yearName'] != null ? map['yearName'] as String : null,
      yearArabicName: map['yearArabicName'] != null
          ? map['yearArabicName'] as String
          : null,
      isActive: map['isActive'] != null ? map['isActive'] as bool : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory YearEntity.fromJson(String source) =>
      YearEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'YearEntity(yearId: $yearId, yearName: $yearName, yearArabicName: $yearArabicName, isActive: $isActive)';
  }

  @override
  bool operator ==(covariant YearEntity other) {
    if (identical(this, other)) return true;

    return other.yearId == yearId &&
        other.yearName == yearName &&
        other.yearArabicName == yearArabicName &&
        other.isActive == isActive;
  }

  @override
  int get hashCode {
    return yearId.hashCode ^
        yearName.hashCode ^
        yearArabicName.hashCode ^
        isActive.hashCode;
  }
}
