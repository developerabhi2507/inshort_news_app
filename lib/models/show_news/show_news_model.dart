class ShowNewsModel {
  int? status;
  String? message;
  Post? post;
  List<Images>? images;

  ShowNewsModel({this.status, this.message, this.post, this.images});

  ShowNewsModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    post = json['post'] != null ? Post.fromJson(json['post']) : null;
    if (json['images'] != null) {
      images = <Images>[];
      json['images'].forEach((v) {
        images!.add(Images.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    if (post != null) {
      data['post'] = post!.toJson();
    }
    if (images != null) {
      data['images'] = images!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Post {
  String? id;
  String? title;
  String? slug;
  String? content;
  String? descShort;
  String? language;
  String? userId;
  String? categoryId;
  String? subCategoryId;
  String? postType;
  String? submitted;
  String? imageId;
  String? visibility;
  String? authRequired;
  String? slider;
  String? sliderOrder;
  String? featured;
  String? featuredOrder;
  String? breaking;
  String? breakingOrder;
  String? recommended;
  String? recommendedOrder;
  String? editorPicks;
  String? editorPicksOrder;
  String? scheduled;
  String? metaTitle;
  String? metaKeywords;
  String? metaDescription;
  String? tags;
  String? scheduledDate;
  String? layout;
  String? videoId;
  String? videoUrlType;
  String? videoUrl;
  String? videoThumbnailId;
  String? status;
  String? totalHit;
  String? contents;
  String? readMoreLink;
  String? createdAt;
  String? updatedAt;

  Post(
      {this.id,
      this.title,
      this.slug,
      this.content,
      this.descShort,
      this.language,
      this.userId,
      this.categoryId,
      this.subCategoryId,
      this.postType,
      this.submitted,
      this.imageId,
      this.visibility,
      this.authRequired,
      this.slider,
      this.sliderOrder,
      this.featured,
      this.featuredOrder,
      this.breaking,
      this.breakingOrder,
      this.recommended,
      this.recommendedOrder,
      this.editorPicks,
      this.editorPicksOrder,
      this.scheduled,
      this.metaTitle,
      this.metaKeywords,
      this.metaDescription,
      this.tags,
      this.scheduledDate,
      this.layout,
      this.videoId,
      this.videoUrlType,
      this.videoUrl,
      this.videoThumbnailId,
      this.status,
      this.totalHit,
      this.contents,
      this.readMoreLink,
      this.createdAt,
      this.updatedAt});

  Post.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    slug = json['slug'];
    content = json['content'];
    descShort = json['desc_short'];
    language = json['language'];
    userId = json['user_id'];
    categoryId = json['category_id'];
    subCategoryId = json['sub_category_id'];
    postType = json['post_type'];
    submitted = json['submitted'];
    imageId = json['image_id'];
    visibility = json['visibility'];
    authRequired = json['auth_required'];
    slider = json['slider'];
    sliderOrder = json['slider_order'];
    featured = json['featured'];
    featuredOrder = json['featured_order'];
    breaking = json['breaking'];
    breakingOrder = json['breaking_order'];
    recommended = json['recommended'];
    recommendedOrder = json['recommended_order'];
    editorPicks = json['editor_picks'];
    editorPicksOrder = json['editor_picks_order'];
    scheduled = json['scheduled'];
    metaTitle = json['meta_title'];
    metaKeywords = json['meta_keywords'];
    metaDescription = json['meta_description'];
    tags = json['tags'];
    scheduledDate = json['scheduled_date'];
    layout = json['layout'];
    videoId = json['video_id'];
    videoUrlType = json['video_url_type'];
    videoUrl = json['video_url'];
    videoThumbnailId = json['video_thumbnail_id'];
    status = json['status'];
    totalHit = json['total_hit'];
    contents = json['contents'];
    readMoreLink = json['read_more_link'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['slug'] = slug;
    data['content'] = content;
    data['desc_short'] = descShort;
    data['language'] = language;
    data['user_id'] = userId;
    data['category_id'] = categoryId;
    data['sub_category_id'] = subCategoryId;
    data['post_type'] = postType;
    data['submitted'] = submitted;
    data['image_id'] = imageId;
    data['visibility'] = visibility;
    data['auth_required'] = authRequired;
    data['slider'] = slider;
    data['slider_order'] = sliderOrder;
    data['featured'] = featured;
    data['featured_order'] = featuredOrder;
    data['breaking'] = breaking;
    data['breaking_order'] = breakingOrder;
    data['recommended'] = recommended;
    data['recommended_order'] = recommendedOrder;
    data['editor_picks'] = editorPicks;
    data['editor_picks_order'] = editorPicksOrder;
    data['scheduled'] = scheduled;
    data['meta_title'] = metaTitle;
    data['meta_keywords'] = metaKeywords;
    data['meta_description'] = metaDescription;
    data['tags'] = tags;
    data['scheduled_date'] = scheduledDate;
    data['layout'] = layout;
    data['video_id'] = videoId;
    data['video_url_type'] = videoUrlType;
    data['video_url'] = videoUrl;
    data['video_thumbnail_id'] = videoThumbnailId;
    data['status'] = status;
    data['total_hit'] = totalHit;
    data['contents'] = contents;
    data['read_more_link'] = readMoreLink;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class Images {
  String? id;
  String? disk;
  String? originalImage;
  String? ogImage;
  String? thumbnail;
  String? bigImage;
  String? bigImageTwo;
  String? mediumImage;
  String? mediumImageTwo;
  String? mediumImageThree;
  String? smallImage;
  String? createdAt;
  String? updatedAt;

  Images(
      {this.id,
      this.disk,
      this.originalImage,
      this.ogImage,
      this.thumbnail,
      this.bigImage,
      this.bigImageTwo,
      this.mediumImage,
      this.mediumImageTwo,
      this.mediumImageThree,
      this.smallImage,
      this.createdAt,
      this.updatedAt});

  Images.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    disk = json['disk'];
    originalImage = json['original_image'];
    ogImage = json['og_image'];
    thumbnail = json['thumbnail'];
    bigImage = json['big_image'];
    bigImageTwo = json['big_image_two'];
    mediumImage = json['medium_image'];
    mediumImageTwo = json['medium_image_two'];
    mediumImageThree = json['medium_image_three'];
    smallImage = json['small_image'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['disk'] = disk;
    data['original_image'] = originalImage;
    data['og_image'] = ogImage;
    data['thumbnail'] = thumbnail;
    data['big_image'] = bigImage;
    data['big_image_two'] = bigImageTwo;
    data['medium_image'] = mediumImage;
    data['medium_image_two'] = mediumImageTwo;
    data['medium_image_three'] = mediumImageThree;
    data['small_image'] = smallImage;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
