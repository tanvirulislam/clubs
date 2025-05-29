// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ClubColor {
  String? id;
  String? colorName;
  String? colorCode;
  ClubColor({this.id, this.colorName, this.colorCode});

  ClubColor copyWith({String? id, String? colorName, String? colorCode}) {
    return ClubColor(
      id: id ?? this.id,
      colorName: colorName ?? this.colorName,
      colorCode: colorCode ?? this.colorCode,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'colorName': colorName,
      'colorCode': colorCode,
    };
  }

  factory ClubColor.fromMap(Map<String, dynamic> map) {
    return ClubColor(
      id: map['id'] != null ? map['id'] as String : null,
      colorName: map['colorName'] != null ? map['colorName'] as String : null,
      colorCode: map['colorCode'] != null ? map['colorCode'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ClubColor.fromJson(String source) =>
      ClubColor.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'ClubColor(id: $id, colorName: $colorName, colorCode: $colorCode)';

  @override
  bool operator ==(covariant ClubColor other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.colorName == colorName &&
        other.colorCode == colorCode;
  }

  @override
  int get hashCode => id.hashCode ^ colorName.hashCode ^ colorCode.hashCode;
}
