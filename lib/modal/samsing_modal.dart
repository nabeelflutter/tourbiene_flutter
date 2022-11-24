class Modal1 {
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
  int? author;
  String? commentStatus;
  String? pingStatus;
  String? template;
  Meta? meta;
  Description? description;
  Caption? caption;
  String? altText;
  String? mediaType;
  String? mimeType;
  MediaDetails? mediaDetails;
  dynamic post;
  String? sourceUrl;
  Links? links;

  Modal1(Map map,
      {this.id,
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
      this.author,
      this.commentStatus,
      this.pingStatus,
      this.template,
      this.meta,
      this.description,
      this.caption,
      this.altText,
      this.mediaType,
      this.mimeType,
      this.mediaDetails,
      this.post,
      this.sourceUrl,
      this.links});

  Modal1.fromJson(Map<String, dynamic> json) {
    if (json["id"] is int) id = json["id"];
    if (json["date"] is String) date = json["date"];
    if (json["date_gmt"] is String) dateGmt = json["date_gmt"];
    if (json["guid"] is Map) {
      guid = json["guid"] == null ? null : Guid.fromJson(json["guid"]);
    }
    if (json["modified"] is String) modified = json["modified"];
    if (json["modified_gmt"] is String) modifiedGmt = json["modified_gmt"];
    if (json["slug"] is String) slug = json["slug"];
    if (json["status"] is String) status = json["status"];
    if (json["type"] is String) type = json["type"];
    if (json["link"] is String) link = json["link"];
    if (json["title"] is Map) {
      title = json["title"] == null ? null : Title.fromJson(json["title"]);
    }
    if (json["author"] is int) author = json["author"];
    if (json["comment_status"] is String) {
      commentStatus = json["comment_status"];
    }
    if (json["ping_status"] is String) pingStatus = json["ping_status"];
    if (json["template"] is String) template = json["template"];
    if (json["meta"] is Map) {
      meta = json["meta"] == null ? null : Meta.fromJson(json["meta"]);
    }
    if (json["description"] is Map) {
      description = json["description"] == null
          ? null
          : Description.fromJson(json["description"]);
    }
    if (json["caption"] is Map) {
      caption =
          json["caption"] == null ? null : Caption.fromJson(json["caption"]);
    }
    if (json["alt_text"] is String) altText = json["alt_text"];
    if (json["media_type"] is String) mediaType = json["media_type"];
    if (json["mime_type"] is String) mimeType = json["mime_type"];
    if (json["media_details"] is Map) {
      mediaDetails = json["media_details"] == null
          ? null
          : MediaDetails.fromJson(json["media_details"]);
    }
    post = json["post"];
    if (json["source_url"] is String) sourceUrl = json["source_url"];
    if (json["_links"] is Map) {
      links = json["_links"] == null ? null : Links.fromJson(json["_links"]);
    }
  }

  Map<String, dynamic> toJson() {
    // ignore: prefer_collection_literals
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["id"] = id;
    data["date"] = date;
    data["date_gmt"] = dateGmt;
    if (guid != null) data["guid"] = guid?.toJson();
    data["modified"] = modified;
    data["modified_gmt"] = modifiedGmt;
    data["slug"] = slug;
    data["status"] = status;
    data["type"] = type;
    data["link"] = link;
    if (title != null) data["title"] = title?.toJson();
    data["author"] = author;
    data["comment_status"] = commentStatus;
    data["ping_status"] = pingStatus;
    data["template"] = template;
    if (meta != null) data["meta"] = meta?.toJson();
    if (description != null) {
      data["description"] = description?.toJson();
    }
    if (caption != null) data["caption"] = caption?.toJson();
    data["alt_text"] = altText;
    data["media_type"] = mediaType;
    data["mime_type"] = mimeType;
    if (mediaDetails != null) {
      data["media_details"] = mediaDetails?.toJson();
    }
    data["post"] = post;
    data["source_url"] = sourceUrl;
    if (links != null) data["_links"] = links?.toJson();
    return data;
  }

  Modal1 copyWith({
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
    int? author,
    String? commentStatus,
    String? pingStatus,
    String? template,
    Meta? meta,
    Description? description,
    Caption? caption,
    String? altText,
    String? mediaType,
    String? mimeType,
    MediaDetails? mediaDetails,
    dynamic post,
    String? sourceUrl,
    Links? links,
  }) =>
      Modal1({
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
        author: author ?? this.author,
        commentStatus: commentStatus ?? this.commentStatus,
        pingStatus: pingStatus ?? this.pingStatus,
        template: template ?? this.template,
        meta: meta ?? this.meta,
        description: description ?? this.description,
        caption: caption ?? this.caption,
        altText: altText ?? this.altText,
        mediaType: mediaType ?? this.mediaType,
        mimeType: mimeType ?? this.mimeType,
        mediaDetails: mediaDetails ?? this.mediaDetails,
        post: post ?? this.post,
        sourceUrl: sourceUrl ?? this.sourceUrl,
        links: links ?? this.links,
      });
}

class Links {
  List<Self>? self;
  List<Collection>? collection;
  List<About>? about;
  List<Author>? author;
  List<Replies>? replies;

  Links(Map<List<Object>?, List<Object>?> map,
      {this.self, this.collection, this.about, this.author, this.replies});

  Links.fromJson(Map<String, dynamic> json) {
    if (json["self"] is List) {
      self = json["self"] == null
          ? null
          : (json["self"] as List).map((e) => Self.fromJson(e)).toList();
    }
    if (json["collection"] is List) {
      collection = json["collection"] == null
          ? null
          : (json["collection"] as List)
              .map((e) => Collection.fromJson(e))
              .toList();
    }
    if (json["about"] is List) {
      about = json["about"] == null
          ? null
          : (json["about"] as List).map((e) => About.fromJson(e)).toList();
    }
    if (json["author"] is List) {
      author = json["author"] == null
          ? null
          : (json["author"] as List).map((e) => Author.fromJson(e)).toList();
    }
    if (json["replies"] is List) {
      replies = json["replies"] == null
          ? null
          : (json["replies"] as List).map((e) => Replies.fromJson(e)).toList();
    }
  }

  Map<String, dynamic> toJson() {
    // ignore: prefer_collection_literals
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (self != null) {
      data["self"] = self?.map((e) => e.toJson()).toList();
    }
    if (collection != null) {
      data["collection"] = collection?.map((e) => e.toJson()).toList();
    }
    if (about != null) {
      data["about"] = about?.map((e) => e.toJson()).toList();
    }
    if (author != null) {
      data["author"] = author?.map((e) => e.toJson()).toList();
    }
    if (replies != null) {
      data["replies"] = replies?.map((e) => e.toJson()).toList();
    }
    return data;
  }

  Links copyWith({
    List<Self>? self,
    List<Collection>? collection,
    List<About>? about,
    List<Author>? author,
    List<Replies>? replies,
  }) =>
      Links({
        self: self ?? this.self,
        collection: collection ?? this.collection,
        about: about ?? this.about,
        author: author ?? this.author,
        replies: replies ?? this.replies,
      });
}

class Replies {
  bool? embeddable;
  String? href;

  Replies(Map<Object?, Object?> map, {this.embeddable, this.href});

  Replies.fromJson(Map<String, dynamic> json) {
    if (json["embeddable"] is bool) embeddable = json["embeddable"];
    if (json["href"] is String) href = json["href"];
  }

  Map<String, dynamic> toJson() {
    // ignore: prefer_collection_literals
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["embeddable"] = embeddable;
    data["href"] = href;
    return data;
  }

  Replies copyWith({
    bool? embeddable,
    String? href,
  }) =>
      Replies({
        embeddable: embeddable ?? this.embeddable,
        href: href ?? this.href,
      });
}

class Author {
  bool? embeddable;
  String? href;

  Author(Map<Object?, Object?> map, {this.embeddable, this.href});

  Author.fromJson(Map<String, dynamic> json) {
    if (json["embeddable"] is bool) embeddable = json["embeddable"];
    if (json["href"] is String) href = json["href"];
  }

  Map<String, dynamic> toJson() {
    // ignore: prefer_collection_literals
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["embeddable"] = embeddable;
    data["href"] = href;
    return data;
  }

  Author copyWith({
    bool? embeddable,
    String? href,
  }) =>
      Author({
        embeddable: embeddable ?? this.embeddable,
        href: href ?? this.href,
      });
}

class About {
  String? href;

  About(Map<String?, String?> map, {this.href});

  About.fromJson(Map<String, dynamic> json) {
    if (json["href"] is String) href = json["href"];
  }

  Map<String, dynamic> toJson() {
    // ignore: prefer_collection_literals
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["href"] = href;
    return data;
  }

  About copyWith({
    String? href,
  }) =>
      About({
        href: href ?? this.href,
      });
}

class Collection {
  String? href;

  Collection(Map<String?, String?> map, {this.href});

  Collection.fromJson(Map<String, dynamic> json) {
    if (json["href"] is String) href = json["href"];
  }

  Map<String, dynamic> toJson() {
    // ignore: prefer_collection_literals
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["href"] = href;
    return data;
  }

  Collection copyWith({
    String? href,
  }) =>
      Collection({
        href: href ?? this.href,
      });
}

class Self {
  String? href;

  Self(Map<String?, String?> map, {this.href});

  Self.fromJson(Map<String, dynamic> json) {
    if (json["href"] is String) href = json["href"];
  }

  Map<String, dynamic> toJson() {
    // ignore: prefer_collection_literals
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["href"] = href;
    return data;
  }

  Self copyWith({
    String? href,
  }) =>
      Self({
        href: href ?? this.href,
      });
}

class MediaDetails {
  int? width;
  int? height;
  String? file;
  Sizes? sizes;
  ImageMeta? imageMeta;

  MediaDetails(Map<Object?, Object?> map,
      {this.width, this.height, this.file, this.sizes, this.imageMeta});

  MediaDetails.fromJson(Map<String, dynamic> json) {
    if (json["width"] is int) width = json["width"];
    if (json["height"] is int) height = json["height"];
    if (json["file"] is String) file = json["file"];
    if (json["sizes"] is Map) {
      sizes = json["sizes"] == null ? null : Sizes.fromJson(json["sizes"]);
    }
    if (json["image_meta"] is Map) {
      imageMeta = json["image_meta"] == null
          ? null
          : ImageMeta.fromJson(json["image_meta"]);
    }
  }

  Map<String, dynamic> toJson() {
    // ignore: prefer_collection_literals
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["width"] = width;
    data["height"] = height;
    data["file"] = file;
    if (sizes != null) data["sizes"] = sizes?.toJson();
    if (imageMeta != null) data["image_meta"] = imageMeta?.toJson();
    return data;
  }

  MediaDetails copyWith({
    int? width,
    int? height,
    String? file,
    Sizes? sizes,
    ImageMeta? imageMeta,
  }) =>
      MediaDetails({
        width: width ?? this.width,
        height: height ?? this.height,
        file: file ?? this.file,
        sizes: sizes ?? this.sizes,
        imageMeta: imageMeta ?? this.imageMeta,
      });
}

class ImageMeta {
  String? aperture;
  String? credit;
  String? camera;
  String? caption;
  String? createdTimestamp;
  String? copyright;
  String? focalLength;
  String? iso;
  String? shutterSpeed;
  String? title;
  String? orientation;
  List<dynamic>? keywords;

  ImageMeta(Map<Object?, Object?> map,
      {this.aperture,
      this.credit,
      this.camera,
      this.caption,
      this.createdTimestamp,
      this.copyright,
      this.focalLength,
      this.iso,
      this.shutterSpeed,
      this.title,
      this.orientation,
      this.keywords});

  ImageMeta.fromJson(Map<String, dynamic> json) {
    if (json["aperture"] is String) aperture = json["aperture"];
    if (json["credit"] is String) credit = json["credit"];
    if (json["camera"] is String) camera = json["camera"];
    if (json["caption"] is String) caption = json["caption"];
    if (json["created_timestamp"] is String) {
      createdTimestamp = json["created_timestamp"];
    }
    if (json["copyright"] is String) copyright = json["copyright"];
    if (json["focal_length"] is String) focalLength = json["focal_length"];
    if (json["iso"] is String) iso = json["iso"];
    if (json["shutter_speed"] is String) {
      shutterSpeed = json["shutter_speed"];
    }
    if (json["title"] is String) title = json["title"];
    if (json["orientation"] is String) orientation = json["orientation"];
    if (json["keywords"] is List) keywords = json["keywords"] ?? [];
  }

  Map<String, dynamic> toJson() {
    // ignore: prefer_collection_literals
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["aperture"] = aperture;
    data["credit"] = credit;
    data["camera"] = camera;
    data["caption"] = caption;
    data["created_timestamp"] = createdTimestamp;
    data["copyright"] = copyright;
    data["focal_length"] = focalLength;
    data["iso"] = iso;
    data["shutter_speed"] = shutterSpeed;
    data["title"] = title;
    data["orientation"] = orientation;
    if (keywords != null) data["keywords"] = keywords;
    return data;
  }

  ImageMeta copyWith({
    String? aperture,
    String? credit,
    String? camera,
    String? caption,
    String? createdTimestamp,
    String? copyright,
    String? focalLength,
    String? iso,
    String? shutterSpeed,
    String? title,
    String? orientation,
    List<dynamic>? keywords,
  }) =>
      ImageMeta({
        aperture: aperture ?? this.aperture,
        credit: credit ?? this.credit,
        camera: camera ?? this.camera,
        caption: caption ?? this.caption,
        createdTimestamp: createdTimestamp ?? this.createdTimestamp,
        copyright: copyright ?? this.copyright,
        focalLength: focalLength ?? this.focalLength,
        iso: iso ?? this.iso,
        shutterSpeed: shutterSpeed ?? this.shutterSpeed,
        title: title ?? this.title,
        orientation: orientation ?? this.orientation,
        keywords: keywords ?? this.keywords,
      });
}

class Sizes {
  WoocommerceThumbnail? woocommerceThumbnail;
  WoocommerceGalleryThumbnail? woocommerceGalleryThumbnail;
  WoocommerceSingle? woocommerceSingle;
  Full? full;

  Sizes(Map<Object?, Object?> map,
      {this.woocommerceThumbnail,
      this.woocommerceGalleryThumbnail,
      this.woocommerceSingle,
      this.full});

  Sizes.fromJson(Map<String, dynamic> json) {
    if (json["woocommerce_thumbnail"] is Map) {
      woocommerceThumbnail = json["woocommerce_thumbnail"] == null
          ? null
          : WoocommerceThumbnail.fromJson(json["woocommerce_thumbnail"]);
    }
    if (json["woocommerce_gallery_thumbnail"] is Map) {
      woocommerceGalleryThumbnail =
          json["woocommerce_gallery_thumbnail"] == null
              ? null
              : WoocommerceGalleryThumbnail.fromJson(
                  json["woocommerce_gallery_thumbnail"]);
    }
    if (json["woocommerce_single"] is Map) {
      woocommerceSingle = json["woocommerce_single"] == null
          ? null
          : WoocommerceSingle.fromJson(json["woocommerce_single"]);
    }
    if (json["full"] is Map) {
      full = json["full"] == null ? null : Full.fromJson(json["full"]);
    }
  }

  Map<String, dynamic> toJson() {
    // ignore: prefer_collection_literals
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (woocommerceThumbnail != null) {
      data["woocommerce_thumbnail"] = woocommerceThumbnail?.toJson();
    }
    if (woocommerceGalleryThumbnail != null) {
      data["woocommerce_gallery_thumbnail"] =
          woocommerceGalleryThumbnail?.toJson();
    }
    if (woocommerceSingle != null) {
      data["woocommerce_single"] = woocommerceSingle?.toJson();
    }
    if (full != null) data["full"] = full?.toJson();
    return data;
  }

  Sizes copyWith({
    WoocommerceThumbnail? woocommerceThumbnail,
    WoocommerceGalleryThumbnail? woocommerceGalleryThumbnail,
    WoocommerceSingle? woocommerceSingle,
    Full? full,
  }) =>
      Sizes({
        woocommerceThumbnail: woocommerceThumbnail ?? this.woocommerceThumbnail,
        woocommerceGalleryThumbnail:
            woocommerceGalleryThumbnail ?? this.woocommerceGalleryThumbnail,
        woocommerceSingle: woocommerceSingle ?? this.woocommerceSingle,
        full: full ?? this.full,
      });
}

class Full {
  String? file;
  int? width;
  int? height;
  String? mimeType;
  String? sourceUrl;

  Full(Map<Object?, Object?> map,
      {this.file, this.width, this.height, this.mimeType, this.sourceUrl});

  Full.fromJson(Map<String, dynamic> json) {
    if (json["file"] is String) file = json["file"];
    if (json["width"] is int) width = json["width"];
    if (json["height"] is int) height = json["height"];
    if (json["mime_type"] is String) mimeType = json["mime_type"];
    if (json["source_url"] is String) sourceUrl = json["source_url"];
  }

  Map<String, dynamic> toJson() {
    // ignore: prefer_collection_literals
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["file"] = file;
    data["width"] = width;
    data["height"] = height;
    data["mime_type"] = mimeType;
    data["source_url"] = sourceUrl;
    return data;
  }

  Full copyWith({
    String? file,
    int? width,
    int? height,
    String? mimeType,
    String? sourceUrl,
  }) =>
      Full({
        file: file ?? this.file,
        width: width ?? this.width,
        height: height ?? this.height,
        mimeType: mimeType ?? this.mimeType,
        sourceUrl: sourceUrl ?? this.sourceUrl,
      });
}

class WoocommerceSingle {
  String? file;
  int? width;
  int? height;
  String? mimeType;
  String? sourceUrl;

  WoocommerceSingle(Map<Object?, Object?> map,
      {this.file, this.width, this.height, this.mimeType, this.sourceUrl});

  WoocommerceSingle.fromJson(Map<String, dynamic> json) {
    if (json["file"] is String) file = json["file"];
    if (json["width"] is int) width = json["width"];
    if (json["height"] is int) height = json["height"];
    if (json["mime_type"] is String) mimeType = json["mime_type"];
    if (json["source_url"] is String) sourceUrl = json["source_url"];
  }

  Map<String, dynamic> toJson() {
    // ignore: prefer_collection_literals
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["file"] = file;
    data["width"] = width;
    data["height"] = height;
    data["mime_type"] = mimeType;
    data["source_url"] = sourceUrl;
    return data;
  }

  WoocommerceSingle copyWith({
    String? file,
    int? width,
    int? height,
    String? mimeType,
    String? sourceUrl,
  }) =>
      WoocommerceSingle({
        file: file ?? this.file,
        width: width ?? this.width,
        height: height ?? this.height,
        mimeType: mimeType ?? this.mimeType,
        sourceUrl: sourceUrl ?? this.sourceUrl,
      });
}

class WoocommerceGalleryThumbnail {
  String? file;
  int? width;
  int? height;
  String? mimeType;
  String? sourceUrl;

  WoocommerceGalleryThumbnail(Map<Object?, Object?> map,
      {this.file, this.width, this.height, this.mimeType, this.sourceUrl});

  WoocommerceGalleryThumbnail.fromJson(Map<String, dynamic> json) {
    if (json["file"] is String) file = json["file"];
    if (json["width"] is int) width = json["width"];
    if (json["height"] is int) height = json["height"];
    if (json["mime_type"] is String) mimeType = json["mime_type"];
    if (json["source_url"] is String) sourceUrl = json["source_url"];
  }

  Map<String, dynamic> toJson() {
    // ignore: prefer_collection_literals
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["file"] = file;
    data["width"] = width;
    data["height"] = height;
    data["mime_type"] = mimeType;
    data["source_url"] = sourceUrl;
    return data;
  }

  WoocommerceGalleryThumbnail copyWith({
    String? file,
    int? width,
    int? height,
    String? mimeType,
    String? sourceUrl,
  }) =>
      WoocommerceGalleryThumbnail({
        file: file ?? this.file,
        width: width ?? this.width,
        height: height ?? this.height,
        mimeType: mimeType ?? this.mimeType,
        sourceUrl: sourceUrl ?? this.sourceUrl,
      });
}

class WoocommerceThumbnail {
  String? file;
  int? width;
  int? height;
  bool? uncropped;
  String? mimeType;
  String? sourceUrl;

  WoocommerceThumbnail(Map<Object?, Object?> map,
      {this.file,
      this.width,
      this.height,
      this.uncropped,
      this.mimeType,
      this.sourceUrl});

  WoocommerceThumbnail.fromJson(Map<String, dynamic> json) {
    if (json["file"] is String) file = json["file"];
    if (json["width"] is int) width = json["width"];
    if (json["height"] is int) height = json["height"];
    if (json["uncropped"] is bool) uncropped = json["uncropped"];
    if (json["mime_type"] is String) mimeType = json["mime_type"];
    if (json["source_url"] is String) sourceUrl = json["source_url"];
  }

  Map<String, dynamic> toJson() {
    // ignore: prefer_collection_literals
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["file"] = file;
    data["width"] = width;
    data["height"] = height;
    data["uncropped"] = uncropped;
    data["mime_type"] = mimeType;
    data["source_url"] = sourceUrl;
    return data;
  }

  WoocommerceThumbnail copyWith({
    String? file,
    int? width,
    int? height,
    bool? uncropped,
    String? mimeType,
    String? sourceUrl,
  }) =>
      WoocommerceThumbnail({
        file: file ?? this.file,
        width: width ?? this.width,
        height: height ?? this.height,
        uncropped: uncropped ?? this.uncropped,
        mimeType: mimeType ?? this.mimeType,
        sourceUrl: sourceUrl ?? this.sourceUrl,
      });
}

class Caption {
  String? rendered;

  Caption(Map<String?, String?> map, {this.rendered});

  Caption.fromJson(Map<String, dynamic> json) {
    if (json["rendered"] is String) rendered = json["rendered"];
  }

  Map<String, dynamic> toJson() {
    // ignore: prefer_collection_literals
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["rendered"] = rendered;
    return data;
  }

  Caption copyWith({
    String? rendered,
  }) =>
      Caption({
        rendered: rendered ?? this.rendered,
      });
}

class Description {
  String? rendered;

  Description(Map<String?, String?> map, {this.rendered});

  Description.fromJson(Map<String, dynamic> json) {
    if (json["rendered"] is String) rendered = json["rendered"];
  }

  Map<String, dynamic> toJson() {
    // ignore: prefer_collection_literals
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["rendered"] = rendered;
    return data;
  }

  Description copyWith({
    String? rendered,
  }) =>
      Description({
        rendered: rendered ?? this.rendered,
      });
}

class Meta {
  String? gspbPostCss;

  Meta(Map<String?, String?> map, {this.gspbPostCss});

  Meta.fromJson(Map<String, dynamic> json) {
    if (json["_gspb_post_css"] is String) {
      gspbPostCss = json["_gspb_post_css"];
    }
  }

  Map<String, dynamic> toJson() {
    // ignore: prefer_collection_literals
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["_gspb_post_css"] = gspbPostCss;
    return data;
  }

  Meta copyWith({
    String? gspbPostCss,
  }) =>
      Meta({
        gspbPostCss: gspbPostCss ?? this.gspbPostCss,
      });
}

class Title {
  String? rendered;

  Title(Map<String?, String?> map, {this.rendered});

  Title.fromJson(Map<String, dynamic> json) {
    if (json["rendered"] is String) rendered = json["rendered"];
  }

  Map<String, dynamic> toJson() {
    // ignore: prefer_collection_literals
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["rendered"] = rendered;
    return data;
  }

  Title copyWith({
    String? rendered,
  }) =>
      Title({
        rendered: rendered ?? this.rendered,
      });
}

class Guid {
  String? rendered;

  Guid(Map<String?, String?> map, {this.rendered});

  Guid.fromJson(Map<String, dynamic> json) {
    if (json["rendered"] is String) rendered = json["rendered"];
  }

  Map<String, dynamic> toJson() {
    // ignore: prefer_collection_literals
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["rendered"] = rendered;
    return data;
  }

  Guid copyWith({
    String? rendered,
  }) =>
      Guid({
        rendered: rendered ?? this.rendered,
      });
}
