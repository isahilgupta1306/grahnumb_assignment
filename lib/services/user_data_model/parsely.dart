import 'dart:convert';

import 'package:collection/collection.dart';

class Parsely {
  String? version;
  List<dynamic>? meta;
  String? rendered;

  Parsely({this.version, this.meta, this.rendered});

  @override
  String toString() {
    return 'Parsely(version: $version, meta: $meta, rendered: $rendered)';
  }

  factory Parsely.fromMap(Map<String, dynamic> data) => Parsely(
        version: data['version'] as String?,
        meta: data['meta'] as List<dynamic>?,
        rendered: data['rendered'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'version': version,
        'meta': meta,
        'rendered': rendered,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Parsely].
  factory Parsely.fromJson(String data) {
    return Parsely.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Parsely] to a JSON string.
  String toJson() => json.encode(toMap());

  Parsely copyWith({
    String? version,
    List<dynamic>? meta,
    String? rendered,
  }) {
    return Parsely(
      version: version ?? this.version,
      meta: meta ?? this.meta,
      rendered: rendered ?? this.rendered,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Parsely) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toMap(), toMap());
  }

  @override
  int get hashCode => version.hashCode ^ meta.hashCode ^ rendered.hashCode;
}
