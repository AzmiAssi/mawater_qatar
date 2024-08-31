// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class MawaterEntity {
  String? mawaterArabicName;
  String? mawaterName;
  String? mawaterId;
  String? mawaterImage;
  MawaterEntity({
    this.mawaterArabicName,
    this.mawaterName,
    this.mawaterId,
    this.mawaterImage,
  });

  MawaterEntity copyWith({
    String? mawaterArabicName,
    String? mawaterName,
    String? mawaterId,
    String? mawaterImage,
  }) {
    return MawaterEntity(
      mawaterArabicName: mawaterArabicName ?? this.mawaterArabicName,
      mawaterName: mawaterName ?? this.mawaterName,
      mawaterId: mawaterId ?? this.mawaterId,
      mawaterImage: mawaterImage ?? this.mawaterImage,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mawaterArabicName': mawaterArabicName,
      'mawaterName': mawaterName,
      'mawaterId': mawaterId,
      'mawaterImage': mawaterImage,
    };
  }

  factory MawaterEntity.fromMap(Map<String, dynamic> map) {
    return MawaterEntity(
      mawaterArabicName: map['mawaterArabicName'] != null
          ? map['mawaterArabicName'] as String
          : null,
      mawaterName:
          map['mawaterName'] != null ? map['mawaterName'] as String : null,
      mawaterId: map['mawaterId'] != null ? map['mawaterId'] as String : null,
      mawaterImage:
          map['mawaterImage'] != null ? map['mawaterImage'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory MawaterEntity.fromJson(String source) =>
      MawaterEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'MawaterEntity(mawaterArabicName: $mawaterArabicName, mawaterName: $mawaterName, mawaterId: $mawaterId, mawaterImage: $mawaterImage)';
  }

  @override
  bool operator ==(covariant MawaterEntity other) {
    if (identical(this, other)) return true;

    return other.mawaterArabicName == mawaterArabicName &&
        other.mawaterName == mawaterName &&
        other.mawaterId == mawaterId &&
        other.mawaterImage == mawaterImage;
  }

  @override
  int get hashCode {
    return mawaterArabicName.hashCode ^
        mawaterName.hashCode ^
        mawaterId.hashCode ^
        mawaterImage.hashCode;
  }
}
