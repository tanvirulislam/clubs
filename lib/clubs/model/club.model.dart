import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Club {
  String? id;
  String? name;
  String? rank;
  String? logo;
  String? winRate;
  String? w;
  String? city;
  int? points;
  int? teams;
  double? fanRating;
  Club({
    this.id,
    this.name,
    this.rank,
    this.logo,
    this.winRate,
    this.w,
    this.city,
    this.points,
    this.teams,
    this.fanRating,
  });

  Club copyWith({
    String? id,
    String? name,
    String? rank,
    String? logo,
    String? winRate,
    String? w,
    String? city,
    int? points,
    int? teams,
    double? fanRating,
  }) {
    return Club(
      id: id ?? this.id,
      name: name ?? this.name,
      rank: rank ?? this.rank,
      logo: logo ?? this.logo,
      winRate: winRate ?? this.winRate,
      w: w ?? this.w,
      city: city ?? this.city,
      points: points ?? this.points,
      teams: teams ?? this.teams,
      fanRating: fanRating ?? this.fanRating,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'rank': rank,
      'logo': logo,
      'winRate': winRate,
      'w': w,
      'city': city,
      'points': points,
      'teams': teams,
      'fanRating': fanRating,
    };
  }

  factory Club.fromMap(Map<String, dynamic> map) {
    return Club(
      id: map['id'] != null ? map['id'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      rank: map['rank'] != null ? map['rank'] as String : null,
      logo: map['logo'] != null ? map['logo'] as String : null,
      winRate: map['winRate'] != null ? map['winRate'] as String : null,
      w: map['w'] != null ? map['w'] as String : null,
      city: map['city'] != null ? map['city'] as String : null,
      points: map['points'] != null ? map['points'] as int : null,
      teams: map['teams'] != null ? map['teams'] as int : null,
      fanRating: map['fanRating'] != null ? map['fanRating'] as double : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Club.fromJson(String source) =>
      Club.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Club(id: $id, name: $name, rank: $rank, logo: $logo, winRate: $winRate, w: $w, city: $city, points: $points, teams: $teams, fanRating: $fanRating)';
  }

  @override
  bool operator ==(covariant Club other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.rank == rank &&
        other.logo == logo &&
        other.winRate == winRate &&
        other.w == w &&
        other.city == city &&
        other.points == points &&
        other.teams == teams &&
        other.fanRating == fanRating;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        rank.hashCode ^
        logo.hashCode ^
        winRate.hashCode ^
        w.hashCode ^
        city.hashCode ^
        points.hashCode ^
        teams.hashCode ^
        fanRating.hashCode;
  }
}
