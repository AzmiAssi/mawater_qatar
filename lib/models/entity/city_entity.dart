// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CityEntity {
  String? cityArabicName;
  String? cityId;
  String? cityName;
  String? countryId;
  CityEntity({
    this.cityArabicName,
    this.cityId,
    this.cityName,
    this.countryId,
  });

  CityEntity copyWith({
    String? cityArabicName,
    String? cityId,
    String? cityName,
    String? countryId,
  }) {
    return CityEntity(
      cityArabicName: cityArabicName ?? this.cityArabicName,
      cityId: cityId ?? this.cityId,
      cityName: cityName ?? this.cityName,
      countryId: countryId ?? this.countryId,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cityArabicName': cityArabicName,
      'cityId': cityId,
      'cityName': cityName,
      'countryId': countryId,
    };
  }

  factory CityEntity.fromMap(Map<String, dynamic> map) {
    return CityEntity(
      cityArabicName: map['cityArabicName'] != null
          ? map['cityArabicName'] as String
          : null,
      cityId: map['cityId'] != null ? map['cityId'] as String : null,
      cityName: map['cityName'] != null ? map['cityName'] as String : null,
      countryId: map['countryId'] != null ? map['countryId'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory CityEntity.fromJson(String source) =>
      CityEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CityEntity(cityArabicName: $cityArabicName, cityId: $cityId, cityName: $cityName, countryId: $countryId)';
  }

  @override
  bool operator ==(covariant CityEntity other) {
    if (identical(this, other)) return true;

    return other.cityArabicName == cityArabicName &&
        other.cityId == cityId &&
        other.cityName == cityName &&
        other.countryId == countryId;
  }

  @override
  int get hashCode {
    return cityArabicName.hashCode ^
        cityId.hashCode ^
        cityName.hashCode ^
        countryId.hashCode;
  }
}
