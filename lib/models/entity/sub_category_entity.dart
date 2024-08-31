// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class SubCategoryEntity {
  String? categoryId;
  String? subArabicName;
  String? subName;
  String? subId;
  String? subImage;
  SubCategoryEntity({
    this.categoryId,
    this.subArabicName,
    this.subName,
    this.subId,
    this.subImage,
  });

  SubCategoryEntity copyWith({
    String? categoryId,
    String? subArabicName,
    String? subName,
    String? subId,
    String? subImage,
  }) {
    return SubCategoryEntity(
      categoryId: categoryId ?? this.categoryId,
      subArabicName: subArabicName ?? this.subArabicName,
      subName: subName ?? this.subName,
      subId: subId ?? this.subId,
      subImage: subImage ?? this.subImage,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categoryId': categoryId,
      'subArabicName': subArabicName,
      'subName': subName,
      'subId': subId,
      'subImage': subImage,
    };
  }

  factory SubCategoryEntity.fromMap(Map<String, dynamic> map) {
    return SubCategoryEntity(
      categoryId:
          map['categoryId'] != null ? map['categoryId'] as String : null,
      subArabicName:
          map['subArabicName'] != null ? map['subArabicName'] as String : null,
      subName: map['subName'] != null ? map['subName'] as String : null,
      subId: map['subId'] != null ? map['subId'] as String : null,
      subImage: map['subImage'] != null ? map['subImage'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory SubCategoryEntity.fromJson(String source) =>
      SubCategoryEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'SubCategoryEntity(categoryId: $categoryId, subArabicName: $subArabicName, subName: $subName, subId: $subId, subImage: $subImage)';
  }

  @override
  bool operator ==(covariant SubCategoryEntity other) {
    if (identical(this, other)) return true;

    return other.categoryId == categoryId &&
        other.subArabicName == subArabicName &&
        other.subName == subName &&
        other.subId == subId &&
        other.subImage == subImage;
  }

  @override
  int get hashCode {
    return categoryId.hashCode ^
        subArabicName.hashCode ^
        subName.hashCode ^
        subId.hashCode ^
        subImage.hashCode;
  }
}
