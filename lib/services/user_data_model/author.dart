import 'dart:convert';

import 'package:collection/collection.dart';

class Author {
  bool? embeddable;
  String? href;

  Author({this.embeddable, this.href});

  @override
  String toString() => 'Author(embeddable: $embeddable, href: $href)';

  factory Author.fromMap(Map<String, dynamic> data) => Author(
        embeddable: data['embeddable'] as bool?,
        href: data['href'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'embeddable': embeddable,
        'href': href,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Author].
  factory Author.fromJson(String data) {
    return Author.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Author] to a JSON string.
  String toJson() => json.encode(toMap());

  Author copyWith({
    bool? embeddable,
    String? href,
  }) {
    return Author(
      embeddable: embeddable ?? this.embeddable,
      href: href ?? this.href,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Author) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toMap(), toMap());
  }

  @override
  int get hashCode => embeddable.hashCode ^ href.hashCode;
}
