// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CategoryEntity {
  String? categoryId;
  String? categoryName;
  String? categoryArabicName;
  String? categoryImage;
  bool? isActive;
  bool? isSpecial;
  CategoryEntity({
    this.categoryId,
    this.categoryName,
    this.categoryArabicName,
    this.categoryImage,
    this.isActive,
    this.isSpecial,
  });

  CategoryEntity copyWith({
    String? categoryId,
    String? categoryName,
    String? categoryArabicName,
    String? categoryImage,
    bool? isActive,
    bool? isSpecial,
  }) {
    return CategoryEntity(
      categoryId: categoryId ?? this.categoryId,
      categoryName: categoryName ?? this.categoryName,
      categoryArabicName: categoryArabicName ?? this.categoryArabicName,
      categoryImage: categoryImage ?? this.categoryImage,
      isActive: isActive ?? this.isActive,
      isSpecial: isSpecial ?? this.isSpecial,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categoryId': categoryId,
      'categoryName': categoryName,
      'categoryArabicName': categoryArabicName,
      'categoryImage': categoryImage,
      'isActive': isActive,
      'isSpecial': isSpecial,
    };
  }

  factory CategoryEntity.fromMap(Map<String, dynamic> map) {
    return CategoryEntity(
      categoryId:
          map['categoryId'] != null ? map['categoryId'] as String : null,
      categoryName:
          map['categoryName'] != null ? map['categoryName'] as String : null,
      categoryArabicName: map['categoryArabicName'] != null
          ? map['categoryArabicName'] as String
          : null,
      categoryImage:
          map['categoryImage'] != null ? map['categoryImage'] as String : null,
      isActive: map['isActive'] != null ? map['isActive'] as bool : null,
      isSpecial: map['isSpecial'] != null ? map['isSpecial'] as bool : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory CategoryEntity.fromJson(String source) =>
      CategoryEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CategoryEntity(categoryId: $categoryId, categoryName: $categoryName, categoryArabicName: $categoryArabicName, categoryImage: $categoryImage, isActive: $isActive, isSpecial: $isSpecial)';
  }

  @override
  bool operator ==(covariant CategoryEntity other) {
    if (identical(this, other)) return true;

    return other.categoryId == categoryId &&
        other.categoryName == categoryName &&
        other.categoryArabicName == categoryArabicName &&
        other.categoryImage == categoryImage &&
        other.isActive == isActive &&
        other.isSpecial == isSpecial;
  }

  @override
  int get hashCode {
    return categoryId.hashCode ^
        categoryName.hashCode ^
        categoryArabicName.hashCode ^
        categoryImage.hashCode ^
        isActive.hashCode ^
        isSpecial.hashCode;
  }
}
