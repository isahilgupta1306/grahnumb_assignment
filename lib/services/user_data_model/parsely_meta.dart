import 'dart:convert';

import 'package:collection/collection.dart';

class ParselyMeta {
  String? parselyTitle;
  String? parselyLink;
  String? parselyType;
  String? parselyPubDate;
  String? parselyImageUrl;
  List<String>? parselyAuthor;
  String? parselySection;
  String? parselyTags;
  String? parselyMetadata;

  ParselyMeta({
    this.parselyTitle,
    this.parselyLink,
    this.parselyType,
    this.parselyPubDate,
    this.parselyImageUrl,
    this.parselyAuthor,
    this.parselySection,
    this.parselyTags,
    this.parselyMetadata,
  });

  @override
  String toString() {
    return 'ParselyMeta(parselyTitle: $parselyTitle, parselyLink: $parselyLink, parselyType: $parselyType, parselyPubDate: $parselyPubDate, parselyImageUrl: $parselyImageUrl, parselyAuthor: $parselyAuthor, parselySection: $parselySection, parselyTags: $parselyTags, parselyMetadata: $parselyMetadata)';
  }

  factory ParselyMeta.fromMap(Map<String, dynamic> data) => ParselyMeta(
        parselyTitle: data['parsely-title'] as String?,
        parselyLink: data['parsely-link'] as String?,
        parselyType: data['parsely-type'] as String?,
        parselyPubDate: data['parsely-pub-date'] as String?,
        parselyImageUrl: data['parsely-image-url'] as String?,
        parselyAuthor: data['parsely-author'] as List<String>?,
        parselySection: data['parsely-section'] as String?,
        parselyTags: data['parsely-tags'] as String?,
        parselyMetadata: data['parsely-metadata'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'parsely-title': parselyTitle,
        'parsely-link': parselyLink,
        'parsely-type': parselyType,
        'parsely-pub-date': parselyPubDate,
        'parsely-image-url': parselyImageUrl,
        'parsely-author': parselyAuthor,
        'parsely-section': parselySection,
        'parsely-tags': parselyTags,
        'parsely-metadata': parselyMetadata,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [ParselyMeta].
  factory ParselyMeta.fromJson(String data) {
    return ParselyMeta.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [ParselyMeta] to a JSON string.
  String toJson() => json.encode(toMap());

  ParselyMeta copyWith({
    String? parselyTitle,
    String? parselyLink,
    String? parselyType,
    String? parselyPubDate,
    String? parselyImageUrl,
    List<String>? parselyAuthor,
    String? parselySection,
    String? parselyTags,
    String? parselyMetadata,
  }) {
    return ParselyMeta(
      parselyTitle: parselyTitle ?? this.parselyTitle,
      parselyLink: parselyLink ?? this.parselyLink,
      parselyType: parselyType ?? this.parselyType,
      parselyPubDate: parselyPubDate ?? this.parselyPubDate,
      parselyImageUrl: parselyImageUrl ?? this.parselyImageUrl,
      parselyAuthor: parselyAuthor ?? this.parselyAuthor,
      parselySection: parselySection ?? this.parselySection,
      parselyTags: parselyTags ?? this.parselyTags,
      parselyMetadata: parselyMetadata ?? this.parselyMetadata,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! ParselyMeta) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toMap(), toMap());
  }

  @override
  int get hashCode =>
      parselyTitle.hashCode ^
      parselyLink.hashCode ^
      parselyType.hashCode ^
      parselyPubDate.hashCode ^
      parselyImageUrl.hashCode ^
      parselyAuthor.hashCode ^
      parselySection.hashCode ^
      parselyTags.hashCode ^
      parselyMetadata.hashCode;
}
