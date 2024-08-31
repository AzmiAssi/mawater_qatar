// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class MawaterTypeEntity {
  String? mTypeArabicName;
  String? mTypeName;
  String? mTypeId;
  String? mawaterId;
  MawaterTypeEntity({
    this.mTypeArabicName,
    this.mTypeName,
    this.mTypeId,
    this.mawaterId,
  });

  MawaterTypeEntity copyWith({
    String? mTypeArabicName,
    String? mTypeName,
    String? mTypeId,
    String? mawaterId,
  }) {
    return MawaterTypeEntity(
      mTypeArabicName: mTypeArabicName ?? this.mTypeArabicName,
      mTypeName: mTypeName ?? this.mTypeName,
      mTypeId: mTypeId ?? this.mTypeId,
      mawaterId: mawaterId ?? this.mawaterId,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mTypeArabicName': mTypeArabicName,
      'mTypeName': mTypeName,
      'mTypeId': mTypeId,
      'mawaterId': mawaterId,
    };
  }

  factory MawaterTypeEntity.fromMap(Map<String, dynamic> map) {
    return MawaterTypeEntity(
      mTypeArabicName: map['mTypeArabicName'] != null
          ? map['mTypeArabicName'] as String
          : null,
      mTypeName: map['mTypeName'] != null ? map['mTypeName'] as String : null,
      mTypeId: map['mTypeId'] != null ? map['mTypeId'] as String : null,
      mawaterId: map['mawaterId'] != null ? map['mawaterId'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory MawaterTypeEntity.fromJson(String source) =>
      MawaterTypeEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'MawaterTypeEntity(mTypeArabicName: $mTypeArabicName, mTypeName: $mTypeName, mTypeId: $mTypeId, mawaterId: $mawaterId)';
  }

  @override
  bool operator ==(covariant MawaterTypeEntity other) {
    if (identical(this, other)) return true;

    return other.mTypeArabicName == mTypeArabicName &&
        other.mTypeName == mTypeName &&
        other.mTypeId == mTypeId &&
        other.mawaterId == mawaterId;
  }

  @override
  int get hashCode {
    return mTypeArabicName.hashCode ^
        mTypeName.hashCode ^
        mTypeId.hashCode ^
        mawaterId.hashCode;
  }
}
