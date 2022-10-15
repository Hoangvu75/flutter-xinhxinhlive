// To parse this JSON data, do
//
//     final topViewsBroadcastResponseModel = topViewsBroadcastResponseModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

TopViewsBroadcastResponseModel topViewsBroadcastResponseModelFromJson(String str) => TopViewsBroadcastResponseModel.fromJson(json.decode(str));

String? topViewsBroadcastResponseModelToJson(TopViewsBroadcastResponseModel data) => json.encode(data.toJson());

class TopViewsBroadcastResponseModel {
  TopViewsBroadcastResponseModel({
    required this.success,
    required this.data,
    required this.message,
    required this.mCode,
  });

  final bool? success;
  final Data data;
  final dynamic message;
  final dynamic mCode;

  factory TopViewsBroadcastResponseModel.fromJson(Map<String?, dynamic> json) => TopViewsBroadcastResponseModel(
    success: json["success"],
    data: Data.fromJson(json["data"]),
    message: json["message"],
    mCode: json["mCode"],
  );

  Map<String?, dynamic> toJson() => {
    "success": success,
    "data": data.toJson(),
    "message": message,
    "mCode": mCode,
  };
}

class Data {
  Data({
    required this.trending,
    required this.newest,
  });

  final Trending trending;
  final Newest newest;

  factory Data.fromJson(Map<String?, dynamic> json) => Data(
    trending: Trending.fromJson(json["trending"]),
    newest: Newest.fromJson(json["newest"]),
  );

  Map<String?, dynamic> toJson() => {
    "trending": trending.toJson(),
    "newest": newest.toJson(),
  };
}

class Newest {
  Newest({
    required this.data,
    required this.total,
  });

  final List<NewestDatum> data;
  final int? total;

  factory Newest.fromJson(Map<String?, dynamic> json) => Newest(
    data: List<NewestDatum>.from(json["data"].map((x) => NewestDatum.fromJson(x))),
    total: json["total"],
  );

  Map<String?, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
    "total": total,
  };
}

class NewestDatum {
  NewestDatum({
    required this.id,
    required this.status,
    required this.isRemovedFb,
    required this.isWeb,
    required this.isReStream,
    required this.countOrders,
    required this.countReactions,
    required this.countComments,
    required this.countShares,
    required this.countLiveViews,
    required this.maxCountViews,
    required this.totalViews,
    required this.createdBy,
    required this.shopId,
    required this.userId,
    required this.description,
    required this.title,
    required this.categoryId,
    required this.slug,
    required this.inputUrl,
    required this.linkStream,
    required this.linkThumbnailImage,
    required this.createdAt,
    required this.updatedAt,
    required this.heightScreen,
    required this.startTime,
    required this.thumbnail,
    required this.widthScreen,
    required this.duration,
    required this.endTime,
    required this.linkVideo,
    required this.countReactionXx,
    required this.listLive,
    required this.shopName,
    required this.isSoftRemoved,
    required this.rtmpUpdatedTime,
    required this.avatarOwner,
  });

  final String? id;
  final PurpleStatus? status;
  final bool? isRemovedFb;
  final bool? isWeb;
  final bool? isReStream;
  final int? countOrders;
  final int? countReactions;
  final int? countComments;
  final int? countShares;
  final int? countLiveViews;
  final int? maxCountViews;
  final int? totalViews;
  final CreatedBy? createdBy;
  final CreatedBy? shopId;
  final CreatedBy? userId;
  final String? description;
  final String? title;
  final CategoryId? categoryId;
  final String? slug;
  final String? inputUrl;
  final String? linkStream;
  final String? linkThumbnailImage;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int? heightScreen;
  final String? startTime;
  final String? thumbnail;
  final int? widthScreen;
  final double? duration;
  final String? endTime;
  final String? linkVideo;
  final int? countReactionXx;
  final List<ListLive>? listLive;
  final ShopName? shopName;
  final bool? isSoftRemoved;
  final DateTime? rtmpUpdatedTime;
  final String? avatarOwner;

  factory NewestDatum.fromJson(Map<String?, dynamic> json) => NewestDatum(
    id: json["_id"],
    status: purpleStatusValues.map[json["status"]],
    isRemovedFb: json["isRemovedFB"],
    isWeb: json["isWeb"],
    isReStream: json["isReStream"],
    countOrders: json["countOrders"],
    countReactions: json["countReactions"],
    countComments: json["countComments"],
    countShares: json["countShares"],
    countLiveViews: json["countLiveViews"],
    maxCountViews: json["maxCountViews"],
    totalViews: json["totalViews"],
    createdBy: createdByValues.map[json["createdBy"]],
    shopId: createdByValues.map[json["shopID"]],
    userId: createdByValues.map[json["userID"]],
    description: json["description"],
    title: json["title"],
    categoryId: categoryIdValues.map[json["categoryID"]],
    slug: json["slug"],
    inputUrl: json["inputURL"],
    linkStream: json["linkStream"],
    linkThumbnailImage: json["linkThumbnailImage"],
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    heightScreen: json["heightScreen"],
    startTime: json["startTime"],
    thumbnail: json["thumbnail"],
    widthScreen: json["widthScreen"],
    duration: json["duration"] == null ? null : json["duration"].toDouble(),
    endTime: json["endTime"],
    linkVideo: json["linkVideo"],
    countReactionXx: json["countReactionXX"] == null ? null : json["countReactionXX"],
    listLive: List<ListLive>.from(json["listLive"].map((x) => ListLive.fromJson(x))),
    shopName: shopNameValues.map[json["shopName"]],
    isSoftRemoved: json["isSoftRemoved"] == null ? null : json["isSoftRemoved"],
    rtmpUpdatedTime: json["rtmpUpdatedTime"] == null ? null : DateTime.parse(json["rtmpUpdatedTime"]),
    avatarOwner: json["avatarOwner"] == null ? null : json["avatarOwner"],
  );

  Map<String?, dynamic> toJson() => {
    "_id": id,
    "status": purpleStatusValues.reverse[status],
    "isRemovedFB": isRemovedFb,
    "isWeb": isWeb,
    "isReStream": isReStream,
    "countOrders": countOrders,
    "countReactions": countReactions,
    "countComments": countComments,
    "countShares": countShares,
    "countLiveViews": countLiveViews,
    "maxCountViews": maxCountViews,
    "totalViews": totalViews,
    "createdBy": createdByValues.reverse[createdBy],
    "shopID": createdByValues.reverse[shopId],
    "userID": createdByValues.reverse[userId],
    "description": description,
    "title": title,
    "categoryID": categoryIdValues.reverse[categoryId],
    "slug": slug,
    "inputURL": inputUrl,
    "linkStream": linkStream,
    "linkThumbnailImage": linkThumbnailImage,
    "createdAt": createdAt?.toIso8601String(),
    "updatedAt": updatedAt?.toIso8601String(),
    "heightScreen": heightScreen,
    "startTime": startTime,
    "thumbnail": thumbnail,
    "widthScreen": widthScreen,
    "duration": duration == null ? null : duration,
    "endTime": endTime,
    "linkVideo": linkVideo,
    "countReactionXX": countReactionXx == null ? null : countReactionXx,
    "listLive": List<dynamic>.from(listLive!.map((x) => x.toJson())),
    "shopName": shopNameValues.reverse[shopName],
    "isSoftRemoved": isSoftRemoved == null ? null : isSoftRemoved,
    "rtmpUpdatedTime": rtmpUpdatedTime == null ? null : rtmpUpdatedTime?.toIso8601String(),
    "avatarOwner": avatarOwner == null ? null : avatarOwner,
  };
}

enum CategoryId { THE_60128_BE451181000081_AB4_FD }

final dynamic categoryIdValues = EnumValues({
  "60128be451181000081ab4fd": CategoryId.THE_60128_BE451181000081_AB4_FD
});

enum CreatedBy { THE_61_A60_BAC51_A72800072_A55_C2, THE_62_EE5_D8_EC882_B400070725_B4, THE_62_B687_C38249_E4000724_D81_E, THE_63063400_C9_AC360007075_B54 }

final dynamic createdByValues = EnumValues({
  "61a60bac51a72800072a55c2": CreatedBy.THE_61_A60_BAC51_A72800072_A55_C2,
  "62b687c38249e4000724d81e": CreatedBy.THE_62_B687_C38249_E4000724_D81_E,
  "62ee5d8ec882b400070725b4": CreatedBy.THE_62_EE5_D8_EC882_B400070725_B4,
  "63063400c9ac360007075b54": CreatedBy.THE_63063400_C9_AC360007075_B54
});

class ListLive {
  ListLive({
    required this.id,
    required this.onProfile,
    required this.isCross,
    required this.status,
    required this.isRemovedFb,
    required this.countReactions,
    required this.totalViews,
    required this.countShares,
    required this.campaignId,
    required this.userId,
    required this.createdBy,
    required this.shopId,
    required this.nameUserFb,
    required this.pictureUserFb,
    required this.nameFb,
    required this.picture,
    required this.userFacebookId,
    required this.pageFacebookId,
    required this.pageId,
    required this.liveId,
    required this.objectType,
    required this.videoId,
    required this.postId,
    required this.linkFacebook,
    required this.linkLive,
    required this.title,
    required this.description,
    required this.createdAt,
    required this.updatedAt,
    required this.embedHtml,
    required this.linkVideo,
    required this.streamUrl,
    required this.secureStreamUrl,
    required this.crossError,
    required this.isSoftRemoved,
  });

  final String? id;
  final bool? onProfile;
  final bool? isCross;
  final ListLiveStatus? status;
  final bool? isRemovedFb;
  final int? countReactions;
  final int? totalViews;
  final int? countShares;
  final String? campaignId;
  final CreatedBy? userId;
  final CreatedBy? createdBy;
  final CreatedBy? shopId;
  final NameUserFb? nameUserFb;
  final String? pictureUserFb;
  final String? nameFb;
  final String? picture;
  final String? userFacebookId;
  final String? pageFacebookId;
  final String? pageId;
  final String? liveId;
  final ObjectType? objectType;
  final String? videoId;
  final String? postId;
  final String? linkFacebook;
  final String? linkLive;
  final String? title;
  final String? description;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String? embedHtml;
  final String? linkVideo;
  final String? streamUrl;
  final String? secureStreamUrl;
  final bool? crossError;
  final bool? isSoftRemoved;

  factory ListLive.fromJson(Map<String?, dynamic> json) => ListLive(
    id: json["_id"],
    onProfile: json["onProfile"],
    isCross: json["isCross"],
    status: listLiveStatusValues.map[json["status"]],
    isRemovedFb: json["isRemovedFB"],
    countReactions: json["countReactions"],
    totalViews: json["totalViews"],
    countShares: json["countShares"],
    campaignId: json["campaignID"],
    userId: createdByValues.map[json["userID"]],
    createdBy: createdByValues.map[json["createdBy"]],
    shopId: createdByValues.map[json["shopID"]],
    nameUserFb: nameUserFbValues.map[json["nameUserFB"]],
    pictureUserFb: json["pictureUserFB"],
    nameFb: json["nameFB"],
    picture: json["picture"],
    userFacebookId: json["userFacebookID"],
    pageFacebookId: json["pageFacebookID"],
    pageId: json["pageID"],
    liveId: json["liveID"],
    objectType: objectTypeValues.map[json["objectType"]],
    videoId: json["videoID"],
    postId: json["postID"],
    linkFacebook: json["linkFacebook"],
    linkLive: json["linkLive"],
    title: json["title"],
    description: json["description"],
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    embedHtml: json["embedHTML"],
    linkVideo: json["linkVideo"] == null ? null : json["linkVideo"],
    streamUrl: json["streamURL"] == null ? null : json["streamURL"],
    secureStreamUrl: json["secureStreamURL"] == null ? null : json["secureStreamURL"],
    crossError: json["crossError"] == null ? null : json["crossError"],
    isSoftRemoved: json["isSoftRemoved"] == null ? null : json["isSoftRemoved"],
  );

  Map<String?, dynamic> toJson() => {
    "_id": id,
    "onProfile": onProfile,
    "isCross": isCross,
    "status": listLiveStatusValues.reverse[status],
    "isRemovedFB": isRemovedFb,
    "countReactions": countReactions,
    "totalViews": totalViews,
    "countShares": countShares,
    "campaignID": campaignId,
    "userID": createdByValues.reverse[userId],
    "createdBy": createdByValues.reverse[createdBy],
    "shopID": createdByValues.reverse[shopId],
    "nameUserFB": nameUserFbValues.reverse[nameUserFb],
    "pictureUserFB": pictureUserFb,
    "nameFB": nameFb,
    "picture": picture,
    "userFacebookID": userFacebookId,
    "pageFacebookID": pageFacebookId,
    "pageID": pageId,
    "liveID": liveId,
    "objectType": objectTypeValues.reverse[objectType],
    "videoID": videoId,
    "postID": postId,
    "linkFacebook": linkFacebook,
    "linkLive": linkLive,
    "title": title,
    "description": description,
    "createdAt": createdAt?.toIso8601String(),
    "updatedAt": updatedAt?.toIso8601String(),
    "embedHTML": embedHtml,
    "linkVideo": linkVideo == null ? null : linkVideo,
    "streamURL": streamUrl == null ? null : streamUrl,
    "secureStreamURL": secureStreamUrl == null ? null : secureStreamUrl,
    "crossError": crossError == null ? null : crossError,
    "isSoftRemoved": isSoftRemoved == null ? null : isSoftRemoved,
  };
}

enum NameUserFb { SHOP_MARUKO_LINH, LNG_MINH_T, NGUYEN_NGOC_ANH, HOA_T }

final dynamic nameUserFbValues = EnumValues({
  "Hoa Đất": NameUserFb.HOA_T,
  "Lương Minh Đạt": NameUserFb.LNG_MINH_T,
  "Nguyen Ngoc Anh": NameUserFb.NGUYEN_NGOC_ANH,
  "ShopMaruko Linh": NameUserFb.SHOP_MARUKO_LINH
});

enum ObjectType { PAGE }

final dynamic objectTypeValues = EnumValues({
  "PAGE": ObjectType.PAGE
});

enum ListLiveStatus { VOD, LIVE }

final dynamic listLiveStatusValues = EnumValues({
  "LIVE": ListLiveStatus.LIVE,
  "VOD": ListLiveStatus.VOD
});

enum ShopName { LINHMARUKO, LNG_MINH_T }

final dynamic shopNameValues = EnumValues({
  "Linhmaruko": ShopName.LINHMARUKO,
  "Lương Minh Đạt": ShopName.LNG_MINH_T
});

enum PurpleStatus { LIVE_FINISH }

final dynamic purpleStatusValues = EnumValues({
  "LIVE_FINISH": PurpleStatus.LIVE_FINISH
});

class Trending {
  Trending({
    required this.data,
    required this.total,
  });

  final List<TrendingDatum> data;
  final int? total;

  factory Trending.fromJson(Map<String?, dynamic> json) => Trending(
    data: List<TrendingDatum>.from(json["data"].map((x) => TrendingDatum.fromJson(x))),
    total: json["total"],
  );

  Map<String?, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
    "total": total,
  };
}

class TrendingDatum {
  TrendingDatum({
    required this.id,
    required this.status,
    required this.isSoftRemoved,
    required this.isRemovedFb,
    required this.isWeb,
    required this.isReStream,
    required this.countOrders,
    required this.countReactions,
    required this.countComments,
    required this.countShares,
    required this.countLiveViews,
    required this.maxCountViews,
    required this.totalViews,
    required this.createdBy,
    required this.shopId,
    required this.userId,
    required this.description,
    required this.title,
    required this.categoryId,
    required this.slug,
    required this.inputUrl,
    required this.linkStream,
    required this.linkThumbnailImage,
    required this.createdAt,
    required this.updatedAt,
    required this.rtmpUpdatedTime,
    required this.heightScreen,
    required this.startTime,
    required this.thumbnail,
    required this.widthScreen,
    required this.listLive,
    required this.listLiveManual,
    required this.listLiveIg,
    required this.shopName,
    required this.avatarOwner,
  });

  final String? id;
  final ListLiveStatus? status;
  final bool? isSoftRemoved;
  final bool? isRemovedFb;
  final bool? isWeb;
  final bool? isReStream;
  final int? countOrders;
  final int? countReactions;
  final int? countComments;
  final int? countShares;
  final int? countLiveViews;
  final int? maxCountViews;
  final int? totalViews;
  final CreatedBy? createdBy;
  final CreatedBy? shopId;
  final CreatedBy? userId;
  final String? description;
  final String? title;
  final CategoryId? categoryId;
  final String? slug;
  final String? inputUrl;
  final String? linkStream;
  final String? linkThumbnailImage;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? rtmpUpdatedTime;
  final int? heightScreen;
  final String? startTime;
  final String? thumbnail;
  final int? widthScreen;
  final List<ListLive> listLive;
  final List<dynamic>? listLiveManual;
  final List<dynamic>? listLiveIg;
  final String? shopName;
  final String? avatarOwner;

  factory TrendingDatum.fromJson(Map<String?, dynamic> json) => TrendingDatum(
    id: json["_id"],
    status: listLiveStatusValues.map[json["status"]],
    isSoftRemoved: json["isSoftRemoved"],
    isRemovedFb: json["isRemovedFB"],
    isWeb: json["isWeb"],
    isReStream: json["isReStream"],
    countOrders: json["countOrders"],
    countReactions: json["countReactions"],
    countComments: json["countComments"],
    countShares: json["countShares"],
    countLiveViews: json["countLiveViews"],
    maxCountViews: json["maxCountViews"],
    totalViews: json["totalViews"],
    createdBy: createdByValues.map[json["createdBy"]],
    shopId: createdByValues.map[json["shopID"]],
    userId: createdByValues.map[json["userID"]],
    description: json["description"],
    title: json["title"],
    categoryId: categoryIdValues.map[json["categoryID"]],
    slug: json["slug"],
    inputUrl: json["inputURL"],
    linkStream: json["linkStream"],
    linkThumbnailImage: json["linkThumbnailImage"],
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    rtmpUpdatedTime: DateTime.parse(json["rtmpUpdatedTime"]),
    heightScreen: json["heightScreen"],
    startTime: json["startTime"],
    thumbnail: json["thumbnail"],
    widthScreen: json["widthScreen"],
    listLive: List<ListLive>.from(json["listLive"].map((x) => ListLive.fromJson(x))),
    listLiveManual: List<dynamic>.from(json["listLiveManual"].map((x) => x)),
    listLiveIg: List<dynamic>.from(json["listLiveIG"].map((x) => x)),
    shopName: json["shopName"],
    avatarOwner: json["avatarOwner"],
  );

  Map<String?, dynamic> toJson() => {
    "_id": id,
    "status": listLiveStatusValues.reverse[status],
    "isSoftRemoved": isSoftRemoved,
    "isRemovedFB": isRemovedFb,
    "isWeb": isWeb,
    "isReStream": isReStream,
    "countOrders": countOrders,
    "countReactions": countReactions,
    "countComments": countComments,
    "countShares": countShares,
    "countLiveViews": countLiveViews,
    "maxCountViews": maxCountViews,
    "totalViews": totalViews,
    "createdBy": createdByValues.reverse[createdBy],
    "shopID": createdByValues.reverse[shopId],
    "userID": createdByValues.reverse[userId],
    "description": description,
    "title": title,
    "categoryID": categoryIdValues.reverse[categoryId],
    "slug": slug,
    "inputURL": inputUrl,
    "linkStream": linkStream,
    "linkThumbnailImage": linkThumbnailImage,
    "createdAt": createdAt?.toIso8601String(),
    "updatedAt": updatedAt?.toIso8601String(),
    "rtmpUpdatedTime": rtmpUpdatedTime?.toIso8601String(),
    "heightScreen": heightScreen,
    "startTime": startTime,
    "thumbnail": thumbnail,
    "widthScreen": widthScreen,
    "listLive": List<dynamic>.from(listLive.map((x) => x.toJson())),
    "listLiveManual": List<dynamic>.from(listLiveManual!.map((x) => x)),
    "listLiveIG": List<dynamic>.from(listLiveIg!.map((x) => x)),
    "shopName": shopName,
    "avatarOwner": avatarOwner,
  };
}

class EnumValues<T> {
  Map<String?, T> map;
  late Map<T, String?> reverseMap;

  EnumValues(this.map);

  Map<T, String?> get reverse {
    reverseMap;
    return reverseMap;
  }
}
