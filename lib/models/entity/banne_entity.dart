// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class BanneEntity {
  String? bannerId;
  String? bannerImage;
  BanneEntity({
    this.bannerId,
    this.bannerImage,
  });

  BanneEntity copyWith({
    String? bannerId,
    String? bannerImage,
  }) {
    return BanneEntity(
      bannerId: bannerId ?? this.bannerId,
      bannerImage: bannerImage ?? this.bannerImage,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bannerId': bannerId,
      'bannerImage': bannerImage,
    };
  }

  factory BanneEntity.fromMap(Map<String, dynamic> map) {
    return BanneEntity(
      bannerId: map['bannerId'] != null ? map['bannerId'] as String : null,
      bannerImage:
          map['bannerImage'] != null ? map['bannerImage'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory BanneEntity.fromJson(String source) =>
      BanneEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'BanneEntity(bannerId: $bannerId, bannerImage: $bannerImage)';

  @override
  bool operator ==(covariant BanneEntity other) {
    if (identical(this, other)) return true;

    return other.bannerId == bannerId && other.bannerImage == bannerImage;
  }

  @override
  int get hashCode => bannerId.hashCode ^ bannerImage.hashCode;
}
