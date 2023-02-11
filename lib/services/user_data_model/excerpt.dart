import 'dart:convert';

import 'package:collection/collection.dart';

class Excerpt {
  String? rendered;
  bool? protected;

  Excerpt({this.rendered, this.protected});

  @override
  String toString() => 'Excerpt(rendered: $rendered, protected: $protected)';

  factory Excerpt.fromMap(Map<String, dynamic> data) => Excerpt(
        rendered: data['rendered'] as String?,
        protected: data['protected'] as bool?,
      );

  Map<String, dynamic> toMap() => {
        'rendered': rendered,
        'protected': protected,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Excerpt].
  factory Excerpt.fromJson(String data) {
    return Excerpt.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Excerpt] to a JSON string.
  String toJson() => json.encode(toMap());

  Excerpt copyWith({
    String? rendered,
    bool? protected,
  }) {
    return Excerpt(
      rendered: rendered ?? this.rendered,
      protected: protected ?? this.protected,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Excerpt) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toMap(), toMap());
  }

  @override
  int get hashCode => rendered.hashCode ^ protected.hashCode;
}
