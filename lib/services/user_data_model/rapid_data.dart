import 'dart:convert';

import 'package:collection/collection.dart';

class RapidData {
  String? pt;
  String? pct;

  RapidData({this.pt, this.pct});

  @override
  String toString() => 'RapidData(pt: $pt, pct: $pct)';

  factory RapidData.fromMap(Map<String, dynamic> data) => RapidData(
        pt: data['pt'] as String?,
        pct: data['pct'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'pt': pt,
        'pct': pct,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [RapidData].
  factory RapidData.fromJson(String data) {
    return RapidData.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [RapidData] to a JSON string.
  String toJson() => json.encode(toMap());

  RapidData copyWith({
    String? pt,
    String? pct,
  }) {
    return RapidData(
      pt: pt ?? this.pt,
      pct: pct ?? this.pct,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! RapidData) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toMap(), toMap());
  }

  @override
  int get hashCode => pt.hashCode ^ pct.hashCode;
}
