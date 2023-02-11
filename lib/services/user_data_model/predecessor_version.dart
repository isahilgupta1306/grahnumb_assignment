import 'dart:convert';

import 'package:collection/collection.dart';

class PredecessorVersion {
  int? id;
  String? href;

  PredecessorVersion({this.id, this.href});

  @override
  String toString() => 'PredecessorVersion(id: $id, href: $href)';

  factory PredecessorVersion.fromMap(Map<String, dynamic> data) {
    return PredecessorVersion(
      id: data['id'] as int?,
      href: data['href'] as String?,
    );
  }

  Map<String, dynamic> toMap() => {
        'id': id,
        'href': href,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [PredecessorVersion].
  factory PredecessorVersion.fromJson(String data) {
    return PredecessorVersion.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [PredecessorVersion] to a JSON string.
  String toJson() => json.encode(toMap());

  PredecessorVersion copyWith({
    int? id,
    String? href,
  }) {
    return PredecessorVersion(
      id: id ?? this.id,
      href: href ?? this.href,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! PredecessorVersion) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toMap(), toMap());
  }

  @override
  int get hashCode => id.hashCode ^ href.hashCode;
}
