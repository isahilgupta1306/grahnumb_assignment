import 'dart:convert';

import 'package:collection/collection.dart';

import 'content.dart';
import 'excerpt.dart';
import 'guid.dart';
import 'links.dart';
import 'meta.dart';
import 'parsely.dart';
import 'parsely_meta.dart';
import 'primary_category.dart';
import 'rapid_data.dart';
import 'title.dart';

class UserDataModel {
  int? id;
  String? date;
  String? dateGmt;
  Guid? guid;
  String? modified;
  String? modifiedGmt;
  String? slug;
  String? status;
  String? type;
  String? link;
  Title? title;
  Content? content;
  Excerpt? excerpt;
  int? author;
  int? featuredMedia;
  String? commentStatus;
  String? pingStatus;
  bool? sticky;
  String? template;
  String? format;
  Meta? meta;
  List<int>? categories;
  List<int>? tags;
  List<dynamic>? crunchbaseTag;
  List<dynamic>? tcStoriesTax;
  List<dynamic>? tcEcCategory;
  List<dynamic>? tcEvent;
  List<int>? tcRegionsTax;
  String? jetpackFeaturedMediaUrl;
  Parsely? parsely;
  String? shortlink;
  ParselyMeta? parselyMeta;
  RapidData? rapidData;
  bool? premiumContent;
  int? premiumCutoffPercent;
  bool? featured;
  String? subtitle;
  String? editorialContentProvider;
  List<dynamic>? tcCbMapping;
  dynamic associatedEvent;
  dynamic event;
  List<int>? authors;
  bool? hideFeaturedImage;
  String? canonicalUrl;
  PrimaryCategory? primaryCategory;
  Links? links;

  UserDataModel({
    this.id,
    this.date,
    this.dateGmt,
    this.guid,
    this.modified,
    this.modifiedGmt,
    this.slug,
    this.status,
    this.type,
    this.link,
    this.title,
    this.content,
    this.excerpt,
    this.author,
    this.featuredMedia,
    this.commentStatus,
    this.pingStatus,
    this.sticky,
    this.template,
    this.format,
    this.meta,
    this.categories,
    this.tags,
    this.crunchbaseTag,
    this.tcStoriesTax,
    this.tcEcCategory,
    this.tcEvent,
    this.tcRegionsTax,
    this.jetpackFeaturedMediaUrl,
    this.parsely,
    this.shortlink,
    this.parselyMeta,
    this.rapidData,
    this.premiumContent,
    this.premiumCutoffPercent,
    this.featured,
    this.subtitle,
    this.editorialContentProvider,
    this.tcCbMapping,
    this.associatedEvent,
    this.event,
    this.authors,
    this.hideFeaturedImage,
    this.canonicalUrl,
    this.primaryCategory,
    this.links,
  });

  @override
  String toString() {
    return 'UserDataModel(id: $id, date: $date, dateGmt: $dateGmt, guid: $guid, modified: $modified, modifiedGmt: $modifiedGmt, slug: $slug, status: $status, type: $type, link: $link, title: $title, content: $content, excerpt: $excerpt, author: $author, featuredMedia: $featuredMedia, commentStatus: $commentStatus, pingStatus: $pingStatus, sticky: $sticky, template: $template, format: $format, meta: $meta, categories: $categories, tags: $tags, crunchbaseTag: $crunchbaseTag, tcStoriesTax: $tcStoriesTax, tcEcCategory: $tcEcCategory, tcEvent: $tcEvent, tcRegionsTax: $tcRegionsTax, jetpackFeaturedMediaUrl: $jetpackFeaturedMediaUrl, parsely: $parsely, shortlink: $shortlink, parselyMeta: $parselyMeta, rapidData: $rapidData, premiumContent: $premiumContent, premiumCutoffPercent: $premiumCutoffPercent, featured: $featured, subtitle: $subtitle, editorialContentProvider: $editorialContentProvider, tcCbMapping: $tcCbMapping, associatedEvent: $associatedEvent, event: $event, authors: $authors, hideFeaturedImage: $hideFeaturedImage, canonicalUrl: $canonicalUrl, primaryCategory: $primaryCategory, links: $links)';
  }

  factory UserDataModel.fromMap(Map<String, dynamic> data) => UserDataModel(
        id: data['id'] as int?,
        date: data['date'] as String?,
        dateGmt: data['date_gmt'] as String?,
        guid: data['guid'] == null
            ? null
            : Guid.fromMap(data['guid'] as Map<String, dynamic>),
        modified: data['modified'] as String?,
        modifiedGmt: data['modified_gmt'] as String?,
        slug: data['slug'] as String?,
        status: data['status'] as String?,
        type: data['type'] as String?,
        link: data['link'] as String?,
        title: data['title'] == null
            ? null
            : Title.fromMap(data['title'] as Map<String, dynamic>),
        content: data['content'] == null
            ? null
            : Content.fromMap(data['content'] as Map<String, dynamic>),
        excerpt: data['excerpt'] == null
            ? null
            : Excerpt.fromMap(data['excerpt'] as Map<String, dynamic>),
        author: data['author'] as int?,
        featuredMedia: data['featured_media'] as int?,
        commentStatus: data['comment_status'] as String?,
        pingStatus: data['ping_status'] as String?,
        sticky: data['sticky'] as bool?,
        template: data['template'] as String?,
        format: data['format'] as String?,
        meta: data['meta'] == null
            ? null
            : Meta.fromMap(data['meta'] as Map<String, dynamic>),
        categories: data['categories'] as List<int>?,
        tags: data['tags'] as List<int>?,
        crunchbaseTag: data['crunchbase_tag'] as List<dynamic>?,
        tcStoriesTax: data['tc_stories_tax'] as List<dynamic>?,
        tcEcCategory: data['tc_ec_category'] as List<dynamic>?,
        tcEvent: data['tc_event'] as List<dynamic>?,
        tcRegionsTax: data['tc_regions_tax'] as List<int>?,
        jetpackFeaturedMediaUrl: data['jetpack_featured_media_url'] as String?,
        parsely: data['parsely'] == null
            ? null
            : Parsely.fromMap(data['parsely'] as Map<String, dynamic>),
        shortlink: data['shortlink'] as String?,
        parselyMeta: data['parselyMeta'] == null
            ? null
            : ParselyMeta.fromMap(data['parselyMeta'] as Map<String, dynamic>),
        rapidData: data['rapidData'] == null
            ? null
            : RapidData.fromMap(data['rapidData'] as Map<String, dynamic>),
        premiumContent: data['premiumContent'] as bool?,
        premiumCutoffPercent: data['premiumCutoffPercent'] as int?,
        featured: data['featured'] as bool?,
        subtitle: data['subtitle'] as String?,
        editorialContentProvider: data['editorialContentProvider'] as String?,
        tcCbMapping: data['tc_cb_mapping'] as List<dynamic>?,
        associatedEvent: data['associatedEvent'] as dynamic,
        event: data['event'] as dynamic,
        authors: data['authors'] as List<int>?,
        hideFeaturedImage: data['hide_featured_image'] as bool?,
        canonicalUrl: data['canonical_url'] as String?,
        primaryCategory: data['primary_category'] == null
            ? null
            : PrimaryCategory.fromMap(
                data['primary_category'] as Map<String, dynamic>),
        links: data['_links'] == null
            ? null
            : Links.fromMap(data['_links'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'date': date,
        'date_gmt': dateGmt,
        'guid': guid?.toMap(),
        'modified': modified,
        'modified_gmt': modifiedGmt,
        'slug': slug,
        'status': status,
        'type': type,
        'link': link,
        'title': title?.toMap(),
        'content': content?.toMap(),
        'excerpt': excerpt?.toMap(),
        'author': author,
        'featured_media': featuredMedia,
        'comment_status': commentStatus,
        'ping_status': pingStatus,
        'sticky': sticky,
        'template': template,
        'format': format,
        'meta': meta?.toMap(),
        'categories': categories,
        'tags': tags,
        'crunchbase_tag': crunchbaseTag,
        'tc_stories_tax': tcStoriesTax,
        'tc_ec_category': tcEcCategory,
        'tc_event': tcEvent,
        'tc_regions_tax': tcRegionsTax,
        'jetpack_featured_media_url': jetpackFeaturedMediaUrl,
        'parsely': parsely?.toMap(),
        'shortlink': shortlink,
        'parselyMeta': parselyMeta?.toMap(),
        'rapidData': rapidData?.toMap(),
        'premiumContent': premiumContent,
        'premiumCutoffPercent': premiumCutoffPercent,
        'featured': featured,
        'subtitle': subtitle,
        'editorialContentProvider': editorialContentProvider,
        'tc_cb_mapping': tcCbMapping,
        'associatedEvent': associatedEvent,
        'event': event,
        'authors': authors,
        'hide_featured_image': hideFeaturedImage,
        'canonical_url': canonicalUrl,
        'primary_category': primaryCategory?.toMap(),
        '_links': links?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [UserDataModel].
  factory UserDataModel.fromJson(String data) {
    return UserDataModel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [UserDataModel] to a JSON string.
  String toJson() => json.encode(toMap());

  UserDataModel copyWith({
    int? id,
    String? date,
    String? dateGmt,
    Guid? guid,
    String? modified,
    String? modifiedGmt,
    String? slug,
    String? status,
    String? type,
    String? link,
    Title? title,
    Content? content,
    Excerpt? excerpt,
    int? author,
    int? featuredMedia,
    String? commentStatus,
    String? pingStatus,
    bool? sticky,
    String? template,
    String? format,
    Meta? meta,
    List<int>? categories,
    List<int>? tags,
    List<dynamic>? crunchbaseTag,
    List<dynamic>? tcStoriesTax,
    List<dynamic>? tcEcCategory,
    List<dynamic>? tcEvent,
    List<int>? tcRegionsTax,
    String? jetpackFeaturedMediaUrl,
    Parsely? parsely,
    String? shortlink,
    ParselyMeta? parselyMeta,
    RapidData? rapidData,
    bool? premiumContent,
    int? premiumCutoffPercent,
    bool? featured,
    String? subtitle,
    String? editorialContentProvider,
    List<dynamic>? tcCbMapping,
    dynamic associatedEvent,
    dynamic event,
    List<int>? authors,
    bool? hideFeaturedImage,
    String? canonicalUrl,
    PrimaryCategory? primaryCategory,
    Links? links,
  }) {
    return UserDataModel(
      id: id ?? this.id,
      date: date ?? this.date,
      dateGmt: dateGmt ?? this.dateGmt,
      guid: guid ?? this.guid,
      modified: modified ?? this.modified,
      modifiedGmt: modifiedGmt ?? this.modifiedGmt,
      slug: slug ?? this.slug,
      status: status ?? this.status,
      type: type ?? this.type,
      link: link ?? this.link,
      title: title ?? this.title,
      content: content ?? this.content,
      excerpt: excerpt ?? this.excerpt,
      author: author ?? this.author,
      featuredMedia: featuredMedia ?? this.featuredMedia,
      commentStatus: commentStatus ?? this.commentStatus,
      pingStatus: pingStatus ?? this.pingStatus,
      sticky: sticky ?? this.sticky,
      template: template ?? this.template,
      format: format ?? this.format,
      meta: meta ?? this.meta,
      categories: categories ?? this.categories,
      tags: tags ?? this.tags,
      crunchbaseTag: crunchbaseTag ?? this.crunchbaseTag,
      tcStoriesTax: tcStoriesTax ?? this.tcStoriesTax,
      tcEcCategory: tcEcCategory ?? this.tcEcCategory,
      tcEvent: tcEvent ?? this.tcEvent,
      tcRegionsTax: tcRegionsTax ?? this.tcRegionsTax,
      jetpackFeaturedMediaUrl:
          jetpackFeaturedMediaUrl ?? this.jetpackFeaturedMediaUrl,
      parsely: parsely ?? this.parsely,
      shortlink: shortlink ?? this.shortlink,
      parselyMeta: parselyMeta ?? this.parselyMeta,
      rapidData: rapidData ?? this.rapidData,
      premiumContent: premiumContent ?? this.premiumContent,
      premiumCutoffPercent: premiumCutoffPercent ?? this.premiumCutoffPercent,
      featured: featured ?? this.featured,
      subtitle: subtitle ?? this.subtitle,
      editorialContentProvider:
          editorialContentProvider ?? this.editorialContentProvider,
      tcCbMapping: tcCbMapping ?? this.tcCbMapping,
      associatedEvent: associatedEvent ?? this.associatedEvent,
      event: event ?? this.event,
      authors: authors ?? this.authors,
      hideFeaturedImage: hideFeaturedImage ?? this.hideFeaturedImage,
      canonicalUrl: canonicalUrl ?? this.canonicalUrl,
      primaryCategory: primaryCategory ?? this.primaryCategory,
      links: links ?? this.links,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! UserDataModel) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toMap(), toMap());
  }

  @override
  int get hashCode =>
      id.hashCode ^
      date.hashCode ^
      dateGmt.hashCode ^
      guid.hashCode ^
      modified.hashCode ^
      modifiedGmt.hashCode ^
      slug.hashCode ^
      status.hashCode ^
      type.hashCode ^
      link.hashCode ^
      title.hashCode ^
      content.hashCode ^
      excerpt.hashCode ^
      author.hashCode ^
      featuredMedia.hashCode ^
      commentStatus.hashCode ^
      pingStatus.hashCode ^
      sticky.hashCode ^
      template.hashCode ^
      format.hashCode ^
      meta.hashCode ^
      categories.hashCode ^
      tags.hashCode ^
      crunchbaseTag.hashCode ^
      tcStoriesTax.hashCode ^
      tcEcCategory.hashCode ^
      tcEvent.hashCode ^
      tcRegionsTax.hashCode ^
      jetpackFeaturedMediaUrl.hashCode ^
      parsely.hashCode ^
      shortlink.hashCode ^
      parselyMeta.hashCode ^
      rapidData.hashCode ^
      premiumContent.hashCode ^
      premiumCutoffPercent.hashCode ^
      featured.hashCode ^
      subtitle.hashCode ^
      editorialContentProvider.hashCode ^
      tcCbMapping.hashCode ^
      associatedEvent.hashCode ^
      event.hashCode ^
      authors.hashCode ^
      hideFeaturedImage.hashCode ^
      canonicalUrl.hashCode ^
      primaryCategory.hashCode ^
      links.hashCode;
}
