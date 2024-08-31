// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CountryEntity {
  String? countryId;
  String? countryName;
  String? countryArabicName;
  CountryEntity({
    this.countryId,
    this.countryName,
    this.countryArabicName,
  });

  CountryEntity copyWith({
    String? actions,
    String? countryId,
    String? countryName,
    String? countryArabicName,
  }) {
    return CountryEntity(
      countryId: countryId ?? this.countryId,
      countryName: countryName ?? this.countryName,
      countryArabicName: countryArabicName ?? this.countryArabicName,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'countryId': countryId,
      'countryName': countryName,
      'countryArabicName': countryArabicName,
    };
  }

  factory CountryEntity.fromMap(Map<String, dynamic> map) {
    return CountryEntity(
      countryId: map['countryId'] != null ? map['countryId'] as String : null,
      countryName:
          map['countryName'] != null ? map['countryName'] as String : null,
      countryArabicName: map['countryArabicName'] != null
          ? map['countryArabicName'] as String
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory CountryEntity.fromJson(String source) =>
      CountryEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CountryEntity(countryId: $countryId, countryName: $countryName, countryArabicName: $countryArabicName)';
  }

  @override
  bool operator ==(covariant CountryEntity other) {
    if (identical(this, other)) return true;

    return other.countryId == countryId &&
        other.countryName == countryName &&
        other.countryArabicName == countryArabicName;
  }

  @override
  int get hashCode {
    return countryId.hashCode ^
        countryName.hashCode ^
        countryArabicName.hashCode;
  }
}
