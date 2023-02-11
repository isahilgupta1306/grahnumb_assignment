import 'dart:convert';

import 'package:collection/collection.dart';

class WpAttachment {
  String? href;

  WpAttachment({this.href});

  @override
  String toString() => 'WpAttachment(href: $href)';

  factory WpAttachment.fromMap(Map<String, dynamic> data) => WpAttachment(
        href: data['href'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'href': href,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [WpAttachment].
  factory WpAttachment.fromJson(String data) {
    return WpAttachment.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [WpAttachment] to a JSON string.
  String toJson() => json.encode(toMap());

  WpAttachment copyWith({
    String? href,
  }) {
    return WpAttachment(
      href: href ?? this.href,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! WpAttachment) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toMap(), toMap());
  }

  @override
  int get hashCode => href.hashCode;
}
