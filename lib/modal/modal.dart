// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class Modal {
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
  List<dynamic>? tags;
  List<dynamic>? offerexpiration;
  Links? links;
  Modal({
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
    this.offerexpiration,
    this.links,
  });

  Modal copyWith({
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
    List<dynamic>? tags,
    List<dynamic>? offerexpiration,
    Links? links,
  }) {
    return Modal(
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
      offerexpiration: offerexpiration ?? this.offerexpiration,
      links: links ?? this.links,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'date': date,
      'dateGmt': dateGmt,
      'guid': guid?.toMap(),
      'modified': modified,
      'modifiedGmt': modifiedGmt,
      'slug': slug,
      'status': status,
      'type': type,
      'link': link,
      'title': title?.toMap(),
      'content': content?.toMap(),
      'excerpt': excerpt?.toMap(),
      'author': author,
      'wp:featuredmedia': featuredMedia,
      'commentStatus': commentStatus,
      'pingStatus': pingStatus,
      'sticky': sticky,
      'template': template,
      'format': format,
      'meta': meta?.toMap(),
      'categories': categories,
      'tags': tags,
      'offerexpiration': offerexpiration,
      '_links': links?.toMap(),
    };
  }

  factory Modal.fromMap(Map<String, dynamic> map) {
    return Modal(
      id: map['id'] != null ? map['id'] as int : null,
      date: map['date'] != null ? map['date'] as String : null,
      dateGmt: map['dateGmt'] != null ? map['dateGmt'] as String : null,
      guid: map['guid'] != null
          ? Guid.fromMap(map['guid'] as Map<String, dynamic>)
          : null,
      modified: map['modified'] != null ? map['modified'] as String : null,
      modifiedGmt:
          map['modifiedGmt'] != null ? map['modifiedGmt'] as String : null,
      slug: map['slug'] != null ? map['slug'] as String : null,
      status: map['status'] != null ? map['status'] as String : null,
      type: map['type'] != null ? map['type'] as String : null,
      link: map['link'] != null ? map['link'] as String : null,
      title: map['title'] != null
          ? Title.fromMap(map['title'] as Map<String, dynamic>)
          : null,
      content: map['content'] != null
          ? Content.fromMap(map['content'] as Map<String, dynamic>)
          : null,
      excerpt: map['excerpt'] != null
          ? Excerpt.fromMap(map['excerpt'] as Map<String, dynamic>)
          : null,
      author: map['author'] != null ? map['author'] as int : null,
      featuredMedia:
          map['featuredMedia'] != null ? map['featuredMedia'] as int : null,
      commentStatus:
          map['commentStatus'] != null ? map['commentStatus'] as String : null,
      pingStatus:
          map['pingStatus'] != null ? map['pingStatus'] as String : null,
      sticky: map['sticky'] != null ? map['sticky'] as bool : null,
      template: map['template'] != null ? map['template'] as String : null,
      format: map['format'] != null ? map['format'] as String : null,
      meta: map['meta'] != null
          ? Meta.fromMap(map['meta'] as Map<String, dynamic>)
          : null,
      categories: map['categories'] != null
          ? List<int>.from(map['categories'] as List<dynamic>)
          : null,
      tags: map['tags'] != null
          ? List<dynamic>.from(map['tags'] as List<dynamic>)
          : null,
      //  offerexpiration: map['offerexpiration'] != null ? List<dynamic>.from((map['offerexpiration'] as List<dynamic>) : null,
      offerexpiration: map['offerexpiration'] != null
          ? List<dynamic>.from(map['offerexpiration'] as List<dynamic>)
          : null,
      links: map['_links'] != null
          ? Links.fromMap(map['_links'] as Map<String, dynamic>)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Modal.fromJson(Map<String, dynamic> source) =>
      Modal.fromMap(json.decode(json.encode(source)) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Modal(id: $id, date: $date, dateGmt: $dateGmt, guid: $guid, modified: $modified, modifiedGmt: $modifiedGmt, slug: $slug, status: $status, type: $type, link: $link, title: $title, content: $content, excerpt: $excerpt, author: $author, featuredMedia: $featuredMedia, commentStatus: $commentStatus, pingStatus: $pingStatus, sticky: $sticky, template: $template, format: $format, meta: $meta, categories: $categories, tags: $tags, offerexpiration: $offerexpiration, _links: $links)';
  }

  @override
  bool operator ==(covariant Modal other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.date == date &&
        other.dateGmt == dateGmt &&
        other.guid == guid &&
        other.modified == modified &&
        other.modifiedGmt == modifiedGmt &&
        other.slug == slug &&
        other.status == status &&
        other.type == type &&
        other.link == link &&
        other.title == title &&
        other.content == content &&
        other.excerpt == excerpt &&
        other.author == author &&
        other.featuredMedia == featuredMedia &&
        other.commentStatus == commentStatus &&
        other.pingStatus == pingStatus &&
        other.sticky == sticky &&
        other.template == template &&
        other.format == format &&
        other.meta == meta &&
        listEquals(other.categories, categories) &&
        listEquals(other.tags, tags) &&
        listEquals(other.offerexpiration, offerexpiration) &&
        other.links == links;
  }

  @override
  int get hashCode {
    return id.hashCode ^
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
        offerexpiration.hashCode ^
        links.hashCode;
  }
}

class Guid {
  String? rendered;
  Guid({
    this.rendered,
  });

  Guid copyWith({
    String? rendered,
  }) {
    return Guid(
      rendered: rendered ?? this.rendered,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rendered': rendered,
    };
  }

  factory Guid.fromMap(Map<String, dynamic> map) {
    return Guid(
      rendered: map['rendered'] != null ? map['rendered'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Guid.fromJson(String source) =>
      Guid.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Guid(rendered: $rendered)';

  @override
  bool operator ==(covariant Guid other) {
    if (identical(this, other)) return true;

    return other.rendered == rendered;
  }

  @override
  int get hashCode => rendered.hashCode;
}

class Title {
  String? rendered;
  Title({
    this.rendered,
  });

  Title copyWith({
    String? rendered,
  }) {
    return Title(
      rendered: rendered ?? this.rendered,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rendered': rendered,
    };
  }

  factory Title.fromMap(Map<String, dynamic> map) {
    return Title(
      rendered: map['rendered'] != null ? map['rendered'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Title.fromJson(String source) =>
      Title.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Title(rendered: $rendered)';

  @override
  bool operator ==(covariant Title other) {
    if (identical(this, other)) return true;

    return other.rendered == rendered;
  }

  @override
  int get hashCode => rendered.hashCode;
}

class Content {
  String? rendered;
  bool? protected;
  Content({
    this.rendered,
    this.protected,
  });

  Content copyWith({
    String? rendered,
    bool? protected,
  }) {
    return Content(
      rendered: rendered ?? this.rendered,
      protected: protected ?? this.protected,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rendered': rendered,
      'protected': protected,
    };
  }

  factory Content.fromMap(Map<String, dynamic> map) {
    return Content(
      rendered: map['rendered'] != null ? map['rendered'] as String : null,
      protected: map['protected'] != null ? map['protected'] as bool : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Content.fromJson(String source) =>
      Content.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Content(rendered: $rendered, protected: $protected)';

  @override
  bool operator ==(covariant Content other) {
    if (identical(this, other)) return true;

    return other.rendered == rendered && other.protected == protected;
  }

  @override
  int get hashCode => rendered.hashCode ^ protected.hashCode;
}

class Excerpt {
  String? rendered;
  bool? protected;
  Excerpt({
    this.rendered,
    this.protected,
  });

  Excerpt copyWith({
    String? rendered,
    bool? protected,
  }) {
    return Excerpt(
      rendered: rendered ?? this.rendered,
      protected: protected ?? this.protected,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rendered': rendered,
      'protected': protected,
    };
  }

  factory Excerpt.fromMap(Map<String, dynamic> map) {
    return Excerpt(
      rendered: map['rendered'] != null ? map['rendered'] as String : null,
      protected: map['protected'] != null ? map['protected'] as bool : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Excerpt.fromJson(String source) =>
      Excerpt.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Expert(rendered: $rendered, protected: $protected)';

  @override
  bool operator ==(covariant Excerpt other) {
    if (identical(this, other)) return true;

    return other.rendered == rendered && other.protected == protected;
  }

  @override
  int get hashCode => rendered.hashCode ^ protected.hashCode;
}

class Meta {
  String? gspbPostCss;
  Meta({
    this.gspbPostCss,
  });

  Meta copyWith({
    String? gspbPostCss,
  }) {
    return Meta(
      gspbPostCss: gspbPostCss ?? this.gspbPostCss,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gspbPostCss': gspbPostCss,
    };
  }

  factory Meta.fromMap(Map<String, dynamic> map) {
    return Meta(
      gspbPostCss:
          map['gspbPostCss'] != null ? map['gspbPostCss'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Meta.fromJson(String source) =>
      Meta.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Meta(gspbPostCss: $gspbPostCss)';

  @override
  bool operator ==(covariant Meta other) {
    if (identical(this, other)) return true;

    return other.gspbPostCss == gspbPostCss;
  }

  @override
  int get hashCode => gspbPostCss.hashCode;
}

class Author {
  bool? embeddable;
  String? href;
  Author({
    this.embeddable,
    this.href,
  });

  Author copyWith({
    bool? embeddable,
    String? href,
  }) {
    return Author(
      embeddable: embeddable ?? this.embeddable,
      href: href ?? this.href,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'embeddable': embeddable,
      'href': href,
    };
  }

  factory Author.fromMap(Map<String, dynamic> map) {
    return Author(
      embeddable: map['embeddable'] != null ? map['embeddable'] as bool : null,
      href: map['href'] != null ? map['href'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Author.fromJson(String source) =>
      Author.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Author(embeddable: $embeddable, href: $href)';

  @override
  bool operator ==(covariant Author other) {
    if (identical(this, other)) return true;

    return other.embeddable == embeddable && other.href == href;
  }

  @override
  int get hashCode => embeddable.hashCode ^ href.hashCode;
}

class About {
  String? href;
  About({
    this.href,
  });

  About copyWith({
    String? href,
  }) {
    return About(
      href: href ?? this.href,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'href': href,
    };
  }

  factory About.fromMap(Map<String, dynamic> map) {
    return About(
      href: map['href'] != null ? map['href'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory About.fromJson(String source) =>
      About.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'About(href: $href)';

  @override
  bool operator ==(covariant About other) {
    if (identical(this, other)) return true;

    return other.href == href;
  }

  @override
  int get hashCode => href.hashCode;
}

class Collection {
  String? href;
  Collection({
    this.href,
  });

  Collection copyWith({
    String? href,
  }) {
    return Collection(
      href: href ?? this.href,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'href': href,
    };
  }

  factory Collection.fromMap(Map<String, dynamic> map) {
    return Collection(
      href: map['href'] != null ? map['href'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Collection.fromJson(String source) =>
      Collection.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Collection(href: $href)';

  @override
  bool operator ==(covariant Collection other) {
    if (identical(this, other)) return true;

    return other.href == href;
  }

  @override
  int get hashCode => href.hashCode;
}

class Self {
  String? href;
  Self({
    this.href,
  });

  Self copyWith({
    String? href,
  }) {
    return Self(
      href: href ?? this.href,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'href': href,
    };
  }

  factory Self.fromMap(Map<String, dynamic> map) {
    return Self(
      href: map['href'] != null ? map['href'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Self.fromJson(String source) =>
      Self.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Self(href: $href)';

  @override
  bool operator ==(covariant Self other) {
    if (identical(this, other)) return true;

    return other.href == href;
  }

  @override
  int get hashCode => href.hashCode;
}

class Curies {
  String? name;
  String? href;
  bool? templated;
  Curies({
    this.name,
    this.href,
    this.templated,
  });

  Curies copyWith({
    String? name,
    String? href,
    bool? templated,
  }) {
    return Curies(
      name: name ?? this.name,
      href: href ?? this.href,
      templated: templated ?? this.templated,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'href': href,
      'templated': templated,
    };
  }

  factory Curies.fromMap(Map<String, dynamic> map) {
    return Curies(
      name: map['name'] != null ? map['name'] as String : null,
      href: map['href'] != null ? map['href'] as String : null,
      templated: map['templated'] != null ? map['templated'] as bool : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Curies.fromJson(String source) =>
      Curies.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Curies(name: $name, href: $href, templated: $templated)';

  @override
  bool operator ==(covariant Curies other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.href == href &&
        other.templated == templated;
  }

  @override
  int get hashCode => name.hashCode ^ href.hashCode ^ templated.hashCode;
}

class WpTerm {
  String? taxonomy;
  bool? embeddable;
  String? href;
  WpTerm({
    this.taxonomy,
    this.embeddable,
    this.href,
  });

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

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'taxonomy': taxonomy,
      'embeddable': embeddable,
      'href': href,
    };
  }

  factory WpTerm.fromMap(Map<String, dynamic> map) {
    return WpTerm(
      taxonomy: map['taxonomy'] != null ? map['taxonomy'] as String : null,
      embeddable: map['embeddable'] != null ? map['embeddable'] as bool : null,
      href: map['href'] != null ? map['href'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory WpTerm.fromJson(String source) =>
      WpTerm.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'WpTerm(taxonomy: $taxonomy, embeddable: $embeddable, href: $href)';

  @override
  bool operator ==(covariant WpTerm other) {
    if (identical(this, other)) return true;

    return other.taxonomy == taxonomy &&
        other.embeddable == embeddable &&
        other.href == href;
  }

  @override
  int get hashCode => taxonomy.hashCode ^ embeddable.hashCode ^ href.hashCode;
}

class WpAttatchMent {
  String? href;
  WpAttatchMent({
    this.href,
  });

  WpAttatchMent copyWith({
    String? href,
  }) {
    return WpAttatchMent(
      href: href ?? this.href,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'href': href,
    };
  }

  factory WpAttatchMent.fromMap(Map<String, dynamic> map) {
    return WpAttatchMent(
      href: map['href'] != null ? map['href'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory WpAttatchMent.fromJson(String source) =>
      WpAttatchMent.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'wp:attachment(href: $href)';

  @override
  bool operator ==(covariant WpAttatchMent other) {
    if (identical(this, other)) return true;

    return other.href == href;
  }

  @override
  int get hashCode => href.hashCode;
}

class WpFeatureMedia {
  bool? embeddable;
  String? href;
  WpFeatureMedia({
    this.embeddable,
    this.href,
  });

  WpFeatureMedia copyWith({
    bool? embeddable,
    String? href,
  }) {
    return WpFeatureMedia(
      embeddable: embeddable ?? this.embeddable,
      href: href ?? this.href,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'embeddable': embeddable,
      'href': href,
    };
  }

  factory WpFeatureMedia.fromMap(Map<String, dynamic> map) {
    return WpFeatureMedia(
      embeddable: map['embeddable'] != null ? map['embeddable'] as bool : null,
      href: map['href'] != null ? map['href'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory WpFeatureMedia.fromJson(String source) =>
      WpFeatureMedia.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'wp:featuredmedia(embeddable: $embeddable, href: $href)';

  @override
  bool operator ==(covariant WpFeatureMedia other) {
    if (identical(this, other)) return true;

    return other.embeddable == embeddable && other.href == href;
  }

  @override
  int get hashCode => embeddable.hashCode ^ href.hashCode;
}

class VersionHistory {
  int? count;
  String? href;
  VersionHistory({
    this.count,
    this.href,
  });

  VersionHistory copyWith({
    int? count,
    String? href,
  }) {
    return VersionHistory(
      count: count ?? this.count,
      href: href ?? this.href,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'href': href,
    };
  }

  factory VersionHistory.fromMap(Map<String, dynamic> map) {
    return VersionHistory(
      count: map['count'] != null ? map['count'] as int : null,
      href: map['href'] != null ? map['href'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory VersionHistory.fromJson(String source) =>
      VersionHistory.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'VersionHistory(count: $count, href: $href)';

  @override
  bool operator ==(covariant VersionHistory other) {
    if (identical(this, other)) return true;

    return other.count == count && other.href == href;
  }

  @override
  int get hashCode => count.hashCode ^ href.hashCode;
}

class Replies {
  bool? embeddable;
  String? href;
  Replies({
    this.embeddable,
    this.href,
  });

  Replies copyWith({
    bool? embeddable,
    String? href,
  }) {
    return Replies(
      embeddable: embeddable ?? this.embeddable,
      href: href ?? this.href,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'embeddable': embeddable,
      'href': href,
    };
  }

  factory Replies.fromMap(Map<String, dynamic> map) {
    return Replies(
      embeddable: map['embeddable'] != null ? map['embeddable'] as bool : null,
      href: map['href'] != null ? map['href'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Replies.fromJson(String source) =>
      Replies.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Replies(embeddable: $embeddable, href: $href)';

  @override
  bool operator ==(covariant Replies other) {
    if (identical(this, other)) return true;

    return other.embeddable == embeddable && other.href == href;
  }

  @override
  int get hashCode => embeddable.hashCode ^ href.hashCode;
}

class Links {
  List<Self>? self;
  List<Collection>? collection;
  List<About>? about;
  List<Author>? author;
  List<Replies>? replies;
  List<VersionHistory>? versionHistory;
  List<WpFeatureMedia>? wpfeaturedmedia;
  List<WpAttatchMent>? wpattachment;
  List<WpTerm>? wpterm;
  List<Curies>? curies;
  Links({
    this.self,
    this.collection,
    this.about,
    this.author,
    this.replies,
    this.versionHistory,
    this.wpfeaturedmedia,
    this.wpattachment,
    this.wpterm,
    this.curies,
  });

  Links copyWith({
    List<Self>? self,
    List<Collection>? collection,
    List<About>? about,
    List<Author>? author,
    List<Replies>? replies,
    List<VersionHistory>? versionHistory,
    List<WpFeatureMedia>? wpfeaturedmedia,
    List<WpAttatchMent>? wpattachment,
    List<WpTerm>? wpterm,
    List<Curies>? curies,
  }) {
    return Links(
      self: self ?? this.self,
      collection: collection ?? this.collection,
      about: about ?? this.about,
      author: author ?? this.author,
      replies: replies ?? this.replies,
      versionHistory: versionHistory ?? this.versionHistory,
      wpfeaturedmedia: wpfeaturedmedia ?? this.wpfeaturedmedia,
      wpattachment: wpattachment ?? this.wpattachment,
      wpterm: wpterm ?? this.wpterm,
      curies: curies ?? this.curies,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'self': self!.map((x) => x.toMap()).toList(),
      'collection': collection!.map((x) => x.toMap()).toList(),
      'about': about!.map((x) => x.toMap()).toList(),
      'author': author!.map((x) => x.toMap()).toList(),
      'replies': replies!.map((x) => x.toMap()).toList(),
      'version-history': versionHistory!.map((x) => x.toMap()).toList(),
      'wp:featuredmedia': wpfeaturedmedia!.map((x) => x.toMap()).toList(),
      'wp:attachment': wpattachment!.map((x) => x.toMap()).toList(),
      'wp:term': wpterm!.map((x) => x.toMap()).toList(),
      'curies': curies!.map((x) => x.toMap()).toList(),
    };
  }

  factory Links.fromMap(Map<String, dynamic> map) {
    return Links(
      self: map['self'] != null
          ? List<Self>.from(
              (map['self'] as List<dynamic>).map<Self?>(
                (x) => Self.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      collection: map['collection'] != null
          ? List<Collection>.from(
              (map['collection'] as List<dynamic>).map<Collection?>(
                (x) => Collection.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      about: map['about'] != null
          ? List<About>.from(
              (map['about'] as List<dynamic>).map<About?>(
                (x) => About.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      author: map['author'] != null
          ? List<Author>.from(
              (map['author'] as List<dynamic>).map<Author?>(
                (x) => Author.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      replies: map['replies'] != null
          ? List<Replies>.from(
              (map['replies'] as List<dynamic>).map<Replies?>(
                (x) => Replies.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      versionHistory: map['version-history'] != null
          ? List<VersionHistory>.from(
              (map['version-history'] as List<dynamic>).map<VersionHistory?>(
                (x) => VersionHistory.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      wpfeaturedmedia: map['wp:featuredmedia'] != null
          ? List<WpFeatureMedia>.from(
              (map['wp:featuredmedia'] as List<dynamic>).map<WpFeatureMedia?>(
                (x) => WpFeatureMedia.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      wpattachment: map['wp:attachment'] != null
          ? List<WpAttatchMent>.from(
              (map['wp:attachment'] as List<dynamic>).map<WpAttatchMent?>(
                (x) => WpAttatchMent.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      wpterm: map['wp:term'] != null
          ? List<WpTerm>.from(
              (map['wp:term'] as List<dynamic>).map<WpTerm?>(
                (x) => WpTerm.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      curies: map['curies'] != null
          ? List<Curies>.from(
              (map['curies'] as List<dynamic>).map<Curies?>(
                (x) => Curies.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Links.fromJson(String source) =>
      Links.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Links(self: $self, collection: $collection, about: $about, author: $author, replies: $replies, version-history: $versionHistory, wp:featuredmedia: $wpfeaturedmedia, wp:attachment: $wpattachment, wp:term: $wpterm, curies: $curies)';
  }

  @override
  bool operator ==(covariant Links other) {
    if (identical(this, other)) return true;

    return listEquals(other.self, self) &&
        listEquals(other.collection, collection) &&
        listEquals(other.about, about) &&
        listEquals(other.author, author) &&
        listEquals(other.replies, replies) &&
        listEquals(other.versionHistory, versionHistory) &&
        listEquals(other.wpfeaturedmedia, wpfeaturedmedia) &&
        listEquals(other.wpattachment, wpattachment) &&
        listEquals(other.wpterm, wpterm) &&
        listEquals(other.curies, curies);
  }

  @override
  int get hashCode {
    return self.hashCode ^
        collection.hashCode ^
        about.hashCode ^
        author.hashCode ^
        replies.hashCode ^
        versionHistory.hashCode ^
        wpfeaturedmedia.hashCode ^
        wpattachment.hashCode ^
        wpterm.hashCode ^
        curies.hashCode;
  }
}
