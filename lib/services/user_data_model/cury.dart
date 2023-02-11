import 'dart:convert';

import 'package:collection/collection.dart';

class Cury {
  String? name;
  String? href;
  bool? templated;

  Cury({this.name, this.href, this.templated});

  @override
  String toString() {
    return 'Cury(name: $name, href: $href, templated: $templated)';
  }

  factory Cury.fromMap(Map<String, dynamic> data) => Cury(
        name: data['name'] as String?,
        href: data['href'] as String?,
        templated: data['templated'] as bool?,
      );

  Map<String, dynamic> toMap() => {
        'name': name,
        'href': href,
        'templated': templated,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Cury].
  factory Cury.fromJson(String data) {
    return Cury.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Cury] to a JSON string.
  String toJson() => json.encode(toMap());

  Cury copyWith({
    String? name,
    String? href,
    bool? templated,
  }) {
    return Cury(
      name: name ?? this.name,
      href: href ?? this.href,
      templated: templated ?? this.templated,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Cury) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toMap(), toMap());
  }

  @override
  int get hashCode => name.hashCode ^ href.hashCode ^ templated.hashCode;
}
