import 'dart:convert';

import 'package:collection/collection.dart';

class Meta {
  String? outcome;
  String? status;
  int? crunchbaseTag;
  String? ampStatus;
  List<dynamic>? relegenceEntities;
  List<dynamic>? relegenceSubjects;
  String? carmotUuid;

  Meta({
    this.outcome,
    this.status,
    this.crunchbaseTag,
    this.ampStatus,
    this.relegenceEntities,
    this.relegenceSubjects,
    this.carmotUuid,
  });

  @override
  String toString() {
    return 'Meta(outcome: $outcome, status: $status, crunchbaseTag: $crunchbaseTag, ampStatus: $ampStatus, relegenceEntities: $relegenceEntities, relegenceSubjects: $relegenceSubjects, carmotUuid: $carmotUuid)';
  }

  factory Meta.fromMap(Map<String, dynamic> data) => Meta(
        outcome: data['outcome'] as String?,
        status: data['status'] as String?,
        crunchbaseTag: data['crunchbase_tag'] as int?,
        ampStatus: data['amp_status'] as String?,
        relegenceEntities: data['relegenceEntities'] as List<dynamic>?,
        relegenceSubjects: data['relegenceSubjects'] as List<dynamic>?,
        carmotUuid: data['carmot_uuid'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'outcome': outcome,
        'status': status,
        'crunchbase_tag': crunchbaseTag,
        'amp_status': ampStatus,
        'relegenceEntities': relegenceEntities,
        'relegenceSubjects': relegenceSubjects,
        'carmot_uuid': carmotUuid,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Meta].
  factory Meta.fromJson(String data) {
    return Meta.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Meta] to a JSON string.
  String toJson() => json.encode(toMap());

  Meta copyWith({
    String? outcome,
    String? status,
    int? crunchbaseTag,
    String? ampStatus,
    List<dynamic>? relegenceEntities,
    List<dynamic>? relegenceSubjects,
    String? carmotUuid,
  }) {
    return Meta(
      outcome: outcome ?? this.outcome,
      status: status ?? this.status,
      crunchbaseTag: crunchbaseTag ?? this.crunchbaseTag,
      ampStatus: ampStatus ?? this.ampStatus,
      relegenceEntities: relegenceEntities ?? this.relegenceEntities,
      relegenceSubjects: relegenceSubjects ?? this.relegenceSubjects,
      carmotUuid: carmotUuid ?? this.carmotUuid,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Meta) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toMap(), toMap());
  }

  @override
  int get hashCode =>
      outcome.hashCode ^
      status.hashCode ^
      crunchbaseTag.hashCode ^
      ampStatus.hashCode ^
      relegenceEntities.hashCode ^
      relegenceSubjects.hashCode ^
      carmotUuid.hashCode;
}
