import 'dart:convert';

import 'package:collection/collection.dart';

class Title {
  String? rendered;

  Title({this.rendered});

  @override
  String toString() => 'Title(rendered: $rendered)';

  factory Title.fromMap(Map<String, dynamic> data) => Title(
        rendered: data['rendered'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'rendered': rendered,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Title].
  factory Title.fromJson(String data) {
    return Title.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Title] to a JSON string.
  String toJson() => json.encode(toMap());

  Title copyWith({
    String? rendered,
  }) {
    return Title(
      rendered: rendered ?? this.rendered,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Title) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toMap(), toMap());
  }

  @override
  int get hashCode => rendered.hashCode;
}
