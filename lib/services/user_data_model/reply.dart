import 'dart:convert';

import 'package:collection/collection.dart';

class Reply {
  bool? embeddable;
  String? href;

  Reply({this.embeddable, this.href});

  @override
  String toString() => 'Reply(embeddable: $embeddable, href: $href)';

  factory Reply.fromMap(Map<String, dynamic> data) => Reply(
        embeddable: data['embeddable'] as bool?,
        href: data['href'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'embeddable': embeddable,
        'href': href,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Reply].
  factory Reply.fromJson(String data) {
    return Reply.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Reply] to a JSON string.
  String toJson() => json.encode(toMap());

  Reply copyWith({
    bool? embeddable,
    String? href,
  }) {
    return Reply(
      embeddable: embeddable ?? this.embeddable,
      href: href ?? this.href,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Reply) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toMap(), toMap());
  }

  @override
  int get hashCode => embeddable.hashCode ^ href.hashCode;
}
