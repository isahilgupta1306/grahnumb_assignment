import 'dart:convert';

import 'package:collection/collection.dart';

class About {
  String? href;

  About({this.href});

  @override
  String toString() => 'About(href: $href)';

  factory About.fromMap(Map<String, dynamic> data) => About(
        href: data['href'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'href': href,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [About].
  factory About.fromJson(String data) {
    return About.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [About] to a JSON string.
  String toJson() => json.encode(toMap());

  About copyWith({
    String? href,
  }) {
    return About(
      href: href ?? this.href,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! About) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toMap(), toMap());
  }

  @override
  int get hashCode => href.hashCode;
}
