// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names
import 'dart:convert';

class SectionEntity {
  int? id;
  String? name;
  String? name_ar;
  String? image;
  SectionEntity({
    this.id,
    this.name,
    this.name_ar,
    this.image,
  });

  SectionEntity copyWith({
    int? id,
    String? name,
    String? name_ar,
    String? image,
  }) {
    return SectionEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      name_ar: name_ar ?? this.name_ar,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'name_ar': name_ar,
      'image': image,
    };
  }

  factory SectionEntity.fromMap(Map<String, dynamic> map) {
    return SectionEntity(
      id: map['id'] != null ? map['id'] as int : null,
      name: map['name'] != null ? map['name'] as String : null,
      name_ar: map['name_ar'] != null ? map['name_ar'] as String : null,
      image: map['image'] != null ? map['image'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory SectionEntity.fromJson(String source) =>
      SectionEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'SectionEntity(id: $id, name: $name, name_ar: $name_ar, image: $image)';
  }

  @override
  bool operator ==(covariant SectionEntity other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.name_ar == name_ar &&
        other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^ name.hashCode ^ name_ar.hashCode ^ image.hashCode;
  }
}
