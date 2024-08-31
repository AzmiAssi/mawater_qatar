// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CarTransmitionEntity {
  String? actions;
  String? transArabicName;
  String? transId;
  String? transName;
  CarTransmitionEntity({
    this.actions,
    this.transArabicName,
    this.transId,
    this.transName,
  });

  CarTransmitionEntity copyWith({
    String? actions,
    String? transArabicName,
    String? transId,
    String? transName,
  }) {
    return CarTransmitionEntity(
      actions: actions ?? this.actions,
      transArabicName: transArabicName ?? this.transArabicName,
      transId: transId ?? this.transId,
      transName: transName ?? this.transName,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': actions,
      'transArabicName': transArabicName,
      'transId': transId,
      'transName': transName,
    };
  }

  factory CarTransmitionEntity.fromMap(Map<String, dynamic> map) {
    return CarTransmitionEntity(
      actions: map['actions'] != null ? map['actions'] as String : null,
      transArabicName: map['transArabicName'] != null
          ? map['transArabicName'] as String
          : null,
      transId: map['transId'] != null ? map['transId'] as String : null,
      transName: map['transName'] != null ? map['transName'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory CarTransmitionEntity.fromJson(String source) =>
      CarTransmitionEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CarTransmitionEntity(actions: $actions, transArabicName: $transArabicName, transId: $transId, transName: $transName)';
  }

  @override
  bool operator ==(covariant CarTransmitionEntity other) {
    if (identical(this, other)) return true;

    return other.actions == actions &&
        other.transArabicName == transArabicName &&
        other.transId == transId &&
        other.transName == transName;
  }

  @override
  int get hashCode {
    return actions.hashCode ^
        transArabicName.hashCode ^
        transId.hashCode ^
        transName.hashCode;
  }
}
