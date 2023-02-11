import 'dart:convert';

import 'package:collection/collection.dart';

class PrimaryCategory {
  int? termId;
  String? name;
  String? slug;
  int? termGroup;
  int? termTaxonomyId;
  String? taxonomy;
  String? description;
  int? parent;
  int? count;
  String? filter;

  PrimaryCategory({
    this.termId,
    this.name,
    this.slug,
    this.termGroup,
    this.termTaxonomyId,
    this.taxonomy,
    this.description,
    this.parent,
    this.count,
    this.filter,
  });

  @override
  String toString() {
    return 'PrimaryCategory(termId: $termId, name: $name, slug: $slug, termGroup: $termGroup, termTaxonomyId: $termTaxonomyId, taxonomy: $taxonomy, description: $description, parent: $parent, count: $count, filter: $filter)';
  }

  factory PrimaryCategory.fromMap(Map<String, dynamic> data) {
    return PrimaryCategory(
      termId: data['term_id'] as int?,
      name: data['name'] as String?,
      slug: data['slug'] as String?,
      termGroup: data['term_group'] as int?,
      termTaxonomyId: data['term_taxonomy_id'] as int?,
      taxonomy: data['taxonomy'] as String?,
      description: data['description'] as String?,
      parent: data['parent'] as int?,
      count: data['count'] as int?,
      filter: data['filter'] as String?,
    );
  }

  Map<String, dynamic> toMap() => {
        'term_id': termId,
        'name': name,
        'slug': slug,
        'term_group': termGroup,
        'term_taxonomy_id': termTaxonomyId,
        'taxonomy': taxonomy,
        'description': description,
        'parent': parent,
        'count': count,
        'filter': filter,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [PrimaryCategory].
  factory PrimaryCategory.fromJson(String data) {
    return PrimaryCategory.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [PrimaryCategory] to a JSON string.
  String toJson() => json.encode(toMap());

  PrimaryCategory copyWith({
    int? termId,
    String? name,
    String? slug,
    int? termGroup,
    int? termTaxonomyId,
    String? taxonomy,
    String? description,
    int? parent,
    int? count,
    String? filter,
  }) {
    return PrimaryCategory(
      termId: termId ?? this.termId,
      name: name ?? this.name,
      slug: slug ?? this.slug,
      termGroup: termGroup ?? this.termGroup,
      termTaxonomyId: termTaxonomyId ?? this.termTaxonomyId,
      taxonomy: taxonomy ?? this.taxonomy,
      description: description ?? this.description,
      parent: parent ?? this.parent,
      count: count ?? this.count,
      filter: filter ?? this.filter,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! PrimaryCategory) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toMap(), toMap());
  }

  @override
  int get hashCode =>
      termId.hashCode ^
      name.hashCode ^
      slug.hashCode ^
      termGroup.hashCode ^
      termTaxonomyId.hashCode ^
      taxonomy.hashCode ^
      description.hashCode ^
      parent.hashCode ^
      count.hashCode ^
      filter.hashCode;
}
