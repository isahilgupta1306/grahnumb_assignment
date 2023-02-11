import 'dart:convert';

import 'package:collection/collection.dart';

class WpTerm {
  String? taxonomy;
  bool? embeddable;
  String? href;

  WpTerm({this.taxonomy, this.embeddable, this.href});

  @override
  String toString() {
    return 'WpTerm(taxonomy: $taxonomy, embeddable: $embeddable, href: $href)';
  }

  factory WpTerm.fromMap(Map<String, dynamic> data) => WpTerm(
        taxonomy: data['taxonomy'] as String?,
        embeddable: data['embeddable'] as bool?,
        href: data['href'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'taxonomy': taxonomy,
        'embeddable': embeddable,
        'href': href,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [WpTerm].
  factory WpTerm.fromJson(String data) {
    return WpTerm.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [WpTerm] to a JSON string.
  String toJson() => json.encode(toMap());

  WpTerm copyWith({
    String? taxonomy,
    bool? embeddable,
    String? href,
  }) {
    return WpTerm(
      taxonomy: taxonomy ?? this.taxonomy,
      embeddable: embeddable ?? this.embeddable,
      href: href ?? this.href,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! WpTerm) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toMap(), toMap());
  }

  @override
  int get hashCode => taxonomy.hashCode ^ embeddable.hashCode ^ href.hashCode;
}
