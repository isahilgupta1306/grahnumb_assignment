import 'dart:convert';

import 'package:collection/collection.dart';

import 'about.dart';
import 'author.dart';
import 'collection.dart';
import 'com_edit.dart';
import 'cury.dart';
import 'predecessor_version.dart';
import 'reply.dart';
import 'self.dart';
import 'version_history.dart';
import 'wp_attachment.dart';
import 'wp_featuredmedia.dart';
import 'wp_term.dart';

class Links {
  List<Self>? self;
  List<Collection>? collection;
  List<About>? about;
  List<Reply>? replies;
  List<VersionHistory>? versionHistory;
  List<PredecessorVersion>? predecessorVersion;
  List<Author>? authors;
  List<ComEdit>? httpsTechcrunch;
  List<Author>? author;
  List<WpFeaturedmedia>? wpFeaturedmedia;
  List<WpAttachment>? wpAttachment;
  List<WpTerm>? wpTerm;
  List<Cury>? curies;

  Links({
    this.self,
    this.collection,
    this.about,
    this.replies,
    this.versionHistory,
    this.predecessorVersion,
    this.authors,
    this.httpsTechcrunch,
    this.author,
    this.wpFeaturedmedia,
    this.wpAttachment,
    this.wpTerm,
    this.curies,
  });

  @override
  String toString() {
    return 'Links(self: $self, collection: $collection, about: $about, replies: $replies, versionHistory: $versionHistory, predecessorVersion: $predecessorVersion, authors: $authors, httpsTechcrunch: $httpsTechcrunch, author: $author, wpFeaturedmedia: $wpFeaturedmedia, wpAttachment: $wpAttachment, wpTerm: $wpTerm, curies: $curies)';
  }

  factory Links.fromMap(Map<String, dynamic> data) => Links(
        self: (data['self'] as List<dynamic>?)
            ?.map((e) => Self.fromMap(e as Map<String, dynamic>))
            .toList(),
        collection: (data['collection'] as List<dynamic>?)
            ?.map((e) => Collection.fromMap(e as Map<String, dynamic>))
            .toList(),
        about: (data['about'] as List<dynamic>?)
            ?.map((e) => About.fromMap(e as Map<String, dynamic>))
            .toList(),
        replies: (data['replies'] as List<dynamic>?)
            ?.map((e) => Reply.fromMap(e as Map<String, dynamic>))
            .toList(),
        versionHistory: (data['version-history'] as List<dynamic>?)
            ?.map((e) => VersionHistory.fromMap(e as Map<String, dynamic>))
            .toList(),
        predecessorVersion: (data['predecessor-version'] as List<dynamic>?)
            ?.map((e) => PredecessorVersion.fromMap(e as Map<String, dynamic>))
            .toList(),
        authors: (data['authors'] as List<dynamic>?)
            ?.map((e) => Author.fromMap(e as Map<String, dynamic>))
            .toList(),
        httpsTechcrunch: (data['https://techcrunch'] as List<dynamic>?)
            ?.map((e) => ComEdit.fromMap(e as Map<String, dynamic>))
            .toList(),
        author: (data['author'] as List<dynamic>?)
            ?.map((e) => Author.fromMap(e as Map<String, dynamic>))
            .toList(),
        wpFeaturedmedia: (data['wp:featuredmedia'] as List<dynamic>?)
            ?.map((e) => WpFeaturedmedia.fromMap(e as Map<String, dynamic>))
            .toList(),
        wpAttachment: (data['wp:attachment'] as List<dynamic>?)
            ?.map((e) => WpAttachment.fromMap(e as Map<String, dynamic>))
            .toList(),
        wpTerm: (data['wp:term'] as List<dynamic>?)
            ?.map((e) => WpTerm.fromMap(e as Map<String, dynamic>))
            .toList(),
        curies: (data['curies'] as List<dynamic>?)
            ?.map((e) => Cury.fromMap(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toMap() => {
        'self': self?.map((e) => e.toMap()).toList(),
        'collection': collection?.map((e) => e.toMap()).toList(),
        'about': about?.map((e) => e.toMap()).toList(),
        'replies': replies?.map((e) => e.toMap()).toList(),
        'version-history': versionHistory?.map((e) => e.toMap()).toList(),
        'predecessor-version':
            predecessorVersion?.map((e) => e.toMap()).toList(),
        'authors': authors?.map((e) => e.toMap()).toList(),
        'https://techcrunch': httpsTechcrunch?.map((e) => e.toMap()).toList(),
        'author': author?.map((e) => e.toMap()).toList(),
        'wp:featuredmedia': wpFeaturedmedia?.map((e) => e.toMap()).toList(),
        'wp:attachment': wpAttachment?.map((e) => e.toMap()).toList(),
        'wp:term': wpTerm?.map((e) => e.toMap()).toList(),
        'curies': curies?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Links].
  factory Links.fromJson(String data) {
    return Links.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Links] to a JSON string.
  String toJson() => json.encode(toMap());

  Links copyWith({
    List<Self>? self,
    List<Collection>? collection,
    List<About>? about,
    List<Reply>? replies,
    List<VersionHistory>? versionHistory,
    List<PredecessorVersion>? predecessorVersion,
    List<Author>? authors,
    List<ComEdit>? httpsTechcrunch,
    List<Author>? author,
    List<WpFeaturedmedia>? wpFeaturedmedia,
    List<WpAttachment>? wpAttachment,
    List<WpTerm>? wpTerm,
    List<Cury>? curies,
  }) {
    return Links(
      self: self ?? this.self,
      collection: collection ?? this.collection,
      about: about ?? this.about,
      replies: replies ?? this.replies,
      versionHistory: versionHistory ?? this.versionHistory,
      predecessorVersion: predecessorVersion ?? this.predecessorVersion,
      authors: authors ?? this.authors,
      httpsTechcrunch: httpsTechcrunch ?? this.httpsTechcrunch,
      author: author ?? this.author,
      wpFeaturedmedia: wpFeaturedmedia ?? this.wpFeaturedmedia,
      wpAttachment: wpAttachment ?? this.wpAttachment,
      wpTerm: wpTerm ?? this.wpTerm,
      curies: curies ?? this.curies,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Links) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toMap(), toMap());
  }

  @override
  int get hashCode =>
      self.hashCode ^
      collection.hashCode ^
      about.hashCode ^
      replies.hashCode ^
      versionHistory.hashCode ^
      predecessorVersion.hashCode ^
      authors.hashCode ^
      httpsTechcrunch.hashCode ^
      author.hashCode ^
      wpFeaturedmedia.hashCode ^
      wpAttachment.hashCode ^
      wpTerm.hashCode ^
      curies.hashCode;
}
