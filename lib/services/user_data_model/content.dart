import 'dart:convert';

import 'package:collection/collection.dart';

class Content {
  String? rendered;
  bool? protected;

  Content({this.rendered, this.protected});

  @override
  String toString() => 'Content(rendered: $rendered, protected: $protected)';

  factory Content.fromMap(Map<String, dynamic> data) => Content(
        rendered: data['rendered'] as String?,
        protected: data['protected'] as bool?,
      );

  Map<String, dynamic> toMap() => {
        'rendered': rendered,
        'protected': protected,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Content].
  factory Content.fromJson(String data) {
    return Content.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Content] to a JSON string.
  String toJson() => json.encode(toMap());

  Content copyWith({
    String? rendered,
    bool? protected,
  }) {
    return Content(
      rendered: rendered ?? this.rendered,
      protected: protected ?? this.protected,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Content) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toMap(), toMap());
  }

  @override
  int get hashCode => rendered.hashCode ^ protected.hashCode;
}
