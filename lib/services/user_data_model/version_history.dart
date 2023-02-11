import 'dart:convert';

import 'package:collection/collection.dart';

class VersionHistory {
  int? count;
  String? href;

  VersionHistory({this.count, this.href});

  @override
  String toString() => 'VersionHistory(count: $count, href: $href)';

  factory VersionHistory.fromMap(Map<String, dynamic> data) {
    return VersionHistory(
      count: data['count'] as int?,
      href: data['href'] as String?,
    );
  }

  Map<String, dynamic> toMap() => {
        'count': count,
        'href': href,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [VersionHistory].
  factory VersionHistory.fromJson(String data) {
    return VersionHistory.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [VersionHistory] to a JSON string.
  String toJson() => json.encode(toMap());

  VersionHistory copyWith({
    int? count,
    String? href,
  }) {
    return VersionHistory(
      count: count ?? this.count,
      href: href ?? this.href,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! VersionHistory) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toMap(), toMap());
  }

  @override
  int get hashCode => count.hashCode ^ href.hashCode;
}
