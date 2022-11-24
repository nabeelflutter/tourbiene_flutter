// ignore_for_file: prefer_if_null_operators

import 'dart:convert';

Modal3 welcomeFromJson(String str) => Modal3.fromJson(json.decode(str));

String welcomeToJson(Modal3 data) => json.encode(data.toJson());

class Modal3 {
  Modal3({
    required this.id,
    required this.date,
    required this.dateGmt,
    required this.guid,
    required this.modified,
    required this.modifiedGmt,
    required this.slug,
    required this.status,
    required this.type,
    required this.link,
    required this.title,
    required this.author,
    required this.commentStatus,
    required this.pingStatus,
    required this.template,
    required this.meta,
    required this.description,
    required this.caption,
    required this.altText,
    required this.mediaType,
    required this.mimeType,
    required this.mediaDetails,
    required this.post,
    required this.sourceUrl,
    required this.links,
  });

  int id;
  DateTime date;
  DateTime dateGmt;
  Caption guid;
  DateTime modified;
  DateTime modifiedGmt;
  String slug;
  String status;
  String type;
  String link;
  Caption title;
  int author;
  String commentStatus;
  String pingStatus;
  String template;
  Meta meta;
  Caption description;
  Caption caption;
  String altText;
  String mediaType;
  String mimeType;
  MediaDetails mediaDetails;
  dynamic post;
  String sourceUrl;
  Links links;

  factory Modal3.fromJson(Map<String, dynamic> json) => Modal3(
        id: json["id"],
        date: DateTime.parse(json["date"]),
        dateGmt: DateTime.parse(json["date_gmt"]),
        guid: Caption.fromJson(json["guid"]),
        modified: DateTime.parse(json["modified"]),
        modifiedGmt: DateTime.parse(json["modified_gmt"]),
        slug: json["slug"],
        status: json["status"],
        type: json["type"],
        link: json["link"],
        title: Caption.fromJson(json["title"]),
        author: json["author"],
        commentStatus: json["comment_status"],
        pingStatus: json["ping_status"],
        template: json["template"],
        meta: Meta.fromJson(json["meta"]),
        description: Caption.fromJson(json["description"]),
        caption: Caption.fromJson(json["caption"]),
        altText: json["alt_text"],
        mediaType: json["media_type"],
        mimeType: json["mime_type"],
        mediaDetails: MediaDetails.fromJson(json["media_details"]),
        post: json["post"],
        sourceUrl: json["source_url"],
        links: Links.fromJson(json["_links"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "date": date.toIso8601String(),
        "date_gmt": dateGmt.toIso8601String(),
        "guid": guid.toJson(),
        "modified": modified.toIso8601String(),
        "modified_gmt": modifiedGmt.toIso8601String(),
        "slug": slug,
        "status": status,
        "type": type,
        "link": link,
        "title": title.toJson(),
        "author": author,
        "comment_status": commentStatus,
        "ping_status": pingStatus,
        "template": template,
        "meta": meta.toJson(),
        "description": description.toJson(),
        "caption": caption.toJson(),
        "alt_text": altText,
        "media_type": mediaType,
        "mime_type": mimeType,
        "media_details": mediaDetails.toJson(),
        "post": post,
        "source_url": sourceUrl,
        "_links": links.toJson(),
      };
}

class Caption {
  Caption({
    required this.rendered,
  });

  String rendered;

  factory Caption.fromJson(Map<String, dynamic> json) => Caption(
        rendered: json["rendered"],
      );

  Map<String, dynamic> toJson() => {
        "rendered": rendered,
      };
}

class Links {
  Links({
    required this.self,
    required this.collection,
    required this.about,
    required this.author,
    required this.replies,
  });

  List<About> self;
  List<About> collection;
  List<About> about;
  List<Author> author;
  List<Author> replies;

  factory Links.fromJson(Map<String, dynamic> json) => Links(
        self: List<About>.from(json["self"].map((x) => About.fromJson(x))),
        collection:
            List<About>.from(json["collection"].map((x) => About.fromJson(x))),
        about: List<About>.from(json["about"].map((x) => About.fromJson(x))),
        author:
            List<Author>.from(json["author"].map((x) => Author.fromJson(x))),
        replies:
            List<Author>.from(json["replies"].map((x) => Author.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "self": List<dynamic>.from(self.map((x) => x.toJson())),
        "collection": List<dynamic>.from(collection.map((x) => x.toJson())),
        "about": List<dynamic>.from(about.map((x) => x.toJson())),
        "author": List<dynamic>.from(author.map((x) => x.toJson())),
        "replies": List<dynamic>.from(replies.map((x) => x.toJson())),
      };
}

class About {
  About({
    required this.href,
  });

  String href;

  factory About.fromJson(Map<String, dynamic> json) => About(
        href: json["href"],
      );

  Map<String, dynamic> toJson() => {
        "href": href,
      };
}

class Author {
  Author({
    required this.embeddable,
    required this.href,
  });

  bool embeddable;
  String href;

  factory Author.fromJson(Map<String, dynamic> json) => Author(
        embeddable: json["embeddable"],
        href: json["href"],
      );

  Map<String, dynamic> toJson() => {
        "embeddable": embeddable,
        "href": href,
      };
}

class MediaDetails {
  MediaDetails({
    required this.width,
    required this.height,
    required this.file,
    required this.sizes,
    required this.imageMeta,
  });

  int width;
  int height;
  String file;
  Sizes sizes;
  ImageMeta imageMeta;

  factory MediaDetails.fromJson(Map<String, dynamic> json) => MediaDetails(
        width: json["width"],
        height: json["height"],
        file: json["file"],
        sizes: Sizes.fromJson(json["sizes"]),
        imageMeta: ImageMeta.fromJson(json["image_meta"]),
      );

  Map<String, dynamic> toJson() => {
        "width": width,
        "height": height,
        "file": file,
        "sizes": sizes.toJson(),
        "image_meta": imageMeta.toJson(),
      };
}

class ImageMeta {
  ImageMeta({
    required this.aperture,
    required this.credit,
    required this.camera,
    required this.caption,
    required this.createdTimestamp,
    required this.copyright,
    required this.focalLength,
    required this.iso,
    required this.shutterSpeed,
    required this.title,
    required this.orientation,
    required this.keywords,
  });

  String aperture;
  String credit;
  String camera;
  String caption;
  String createdTimestamp;
  String copyright;
  String focalLength;
  String iso;
  String shutterSpeed;
  String title;
  String orientation;
  List<dynamic> keywords;

  factory ImageMeta.fromJson(Map<String, dynamic> json) => ImageMeta(
        aperture: json["aperture"],
        credit: json["credit"],
        camera: json["camera"],
        caption: json["caption"],
        createdTimestamp: json["created_timestamp"],
        copyright: json["copyright"],
        focalLength: json["focal_length"],
        iso: json["iso"],
        shutterSpeed: json["shutter_speed"],
        title: json["title"],
        orientation: json["orientation"],
        keywords: List<dynamic>.from(json["keywords"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "aperture": aperture,
        "credit": credit,
        "camera": camera,
        "caption": caption,
        "created_timestamp": createdTimestamp,
        "copyright": copyright,
        "focal_length": focalLength,
        "iso": iso,
        "shutter_speed": shutterSpeed,
        "title": title,
        "orientation": orientation,
        "keywords": List<dynamic>.from(keywords.map((x) => x)),
      };
}

class Sizes {
  Sizes({
    required this.woocommerceThumbnail,
    required this.woocommerceGalleryThumbnail,
    required this.woocommerceSingle,
    required this.full,
  });

  Full woocommerceThumbnail;
  Full woocommerceGalleryThumbnail;
  Full woocommerceSingle;
  Full full;

  factory Sizes.fromJson(Map<String, dynamic> json) => Sizes(
        woocommerceThumbnail: Full.fromJson(json["woocommerce_thumbnail"]),
        woocommerceGalleryThumbnail:
            Full.fromJson(json["woocommerce_gallery_thumbnail"]),
        woocommerceSingle: Full.fromJson(json["woocommerce_single"]),
        full: Full.fromJson(json["full"]),
      );

  Map<String, dynamic> toJson() => {
        "woocommerce_thumbnail": woocommerceThumbnail.toJson(),
        "woocommerce_gallery_thumbnail": woocommerceGalleryThumbnail.toJson(),
        "woocommerce_single": woocommerceSingle.toJson(),
        "full": full.toJson(),
      };
}

class Full {
  Full({
    required this.file,
    required this.width,
    required this.height,
    required this.mimeType,
    required this.sourceUrl,
    required this.uncropped,
  });

  String file;
  int width;
  int height;
  String mimeType;
  String sourceUrl;
  bool uncropped;

  factory Full.fromJson(Map<String, dynamic> json) => Full(
        file: json["file"],
        width: json["width"],
        height: json["height"],
        mimeType: json["mime_type"],
        sourceUrl: json["source_url"],
        uncropped: json["uncropped"] == null ? null : json["uncropped"],
      );

  Map<String, dynamic> toJson() => {
        "file": file,
        "width": width,
        "height": height,
        "mime_type": mimeType,
        "source_url": sourceUrl,
        // ignore: unnecessary_null_comparison
        "uncropped": uncropped == null ? null : uncropped,
      };
}

class Meta {
  Meta({
    required this.gspbPostCss,
  });

  String gspbPostCss;

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        gspbPostCss: json["_gspb_post_css"],
      );

  Map<String, dynamic> toJson() => {
        "_gspb_post_css": gspbPostCss,
      };
}
