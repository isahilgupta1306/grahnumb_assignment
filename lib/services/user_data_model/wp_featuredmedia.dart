import 'dart:convert';

import 'package:collection/collection.dart';

class WpFeaturedmedia {
  bool? embeddable;
  String? href;

  WpFeaturedmedia({this.embeddable, this.href});

  @override
  String toString() {
    return 'WpFeaturedmedia(embeddable: $embeddable, href: $href)';
  }

  factory WpFeaturedmedia.fromMap(Map<String, dynamic> data) {
    return WpFeaturedmedia(
      embeddable: data['embeddable'] as bool?,
      href: data['href'] as String?,
    );
  }

  Map<String, dynamic> toMap() => {
        'embeddable': embeddable,
        'href': href,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [WpFeaturedmedia].
  factory WpFeaturedmedia.fromJson(String data) {
    return WpFeaturedmedia.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [WpFeaturedmedia] to a JSON string.
  String toJson() => json.encode(toMap());

  WpFeaturedmedia copyWith({
    bool? embeddable,
    String? href,
  }) {
    return WpFeaturedmedia(
      embeddable: embeddable ?? this.embeddable,
      href: href ?? this.href,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! WpFeaturedmedia) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toMap(), toMap());
  }

  @override
  int get hashCode => embeddable.hashCode ^ href.hashCode;
}
