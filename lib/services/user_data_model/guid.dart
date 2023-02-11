import 'dart:convert';

import 'package:collection/collection.dart';

class Guid {
  String? rendered;

  Guid({this.rendered});

  @override
  String toString() => 'Guid(rendered: $rendered)';

  factory Guid.fromMap(Map<String, dynamic> data) => Guid(
        rendered: data['rendered'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'rendered': rendered,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Guid].
  factory Guid.fromJson(String data) {
    return Guid.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Guid] to a JSON string.
  String toJson() => json.encode(toMap());

  Guid copyWith({
    String? rendered,
  }) {
    return Guid(
      rendered: rendered ?? this.rendered,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Guid) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toMap(), toMap());
  }

  @override
  int get hashCode => rendered.hashCode;
}
