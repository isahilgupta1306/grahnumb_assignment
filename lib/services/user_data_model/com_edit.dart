import 'dart:convert';

import 'package:collection/collection.dart';

class ComEdit {
  String? href;

  ComEdit({this.href});

  @override
  String toString() => 'ComEdit(href: $href)';

  factory ComEdit.fromMap(Map<String, dynamic> data) => ComEdit(
        href: data['href'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'href': href,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [ComEdit].
  factory ComEdit.fromJson(String data) {
    return ComEdit.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [ComEdit] to a JSON string.
  String toJson() => json.encode(toMap());

  ComEdit copyWith({
    String? href,
  }) {
    return ComEdit(
      href: href ?? this.href,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! ComEdit) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toMap(), toMap());
  }

  @override
  int get hashCode => href.hashCode;
}
