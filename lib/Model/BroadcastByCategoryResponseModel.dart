// To parse this JSON data, do
//
//     final broadcastByCategoryResponseModel = broadcastByCategoryResponseModelFromJson(jsonString);

import 'dart:convert';

BroadcastByCategoryResponseModel broadcastByCategoryResponseModelFromJson(String str) => BroadcastByCategoryResponseModel.fromJson(json.decode(str));

String? broadcastByCategoryResponseModelToJson(BroadcastByCategoryResponseModel data) => json.encode(data.toJson());

class BroadcastByCategoryResponseModel {
  BroadcastByCategoryResponseModel({
    required this.success,
    required this.data,
    required this.message,
    required this.mCode,
  });

  final bool? success;
  final Data data;
  final dynamic message;
  final dynamic mCode;

  factory BroadcastByCategoryResponseModel.fromJson(Map<String?, dynamic> json) => BroadcastByCategoryResponseModel(
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
    required this.results,
    required this.total,
  });

  final List<Result> results;
  final int? total;

  factory Data.fromJson(Map<String?, dynamic> json) => Data(
    results: List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
    total: json["total"],
  );

  Map<String?, dynamic> toJson() => {
    "results": List<dynamic>.from(results.map((x) => x.toJson())),
    "total": total,
  };
}

class Result {
  Result({
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
    required this.defaultThumbnail,
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
    required this.orderSyntax,
    required this.orderSyntaxId,
    required this.duration,
    required this.endTime,
    required this.linkVideo,
    required this.listLive,
    required this.listLiveManual,
    required this.listLiveIg,
    required this.shopName,
    required this.avatarOwner,
    required this.countReactionXx,
  });

  final String? id;
  final String? status;
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
  final String? createdBy;
  final String? shopId;
  final String? userId;
  final String? description;
  final String? title;
  final String? defaultThumbnail;
  final String? categoryId;
  final String? slug;
  final String? inputUrl;
  final String? linkStream;
  final String? linkThumbnailImage;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime? rtmpUpdatedTime;
  final int? heightScreen;
  final String? startTime;
  final String? thumbnail;
  final int? widthScreen;
  final String? orderSyntax;
  final String? orderSyntaxId;
  final double? duration;
  final String? endTime;
  final String? linkVideo;
  final List<ListLive> listLive;
  final List<dynamic> listLiveManual;
  final List<dynamic> listLiveIg;
  final String? shopName;
  final String? avatarOwner;
  final int? countReactionXx;

  factory Result.fromJson(Map<String?, dynamic> json) => Result(
    id: json["_id"],
    status: json["status"],
    isSoftRemoved: json["isSoftRemoved"] == null ? null : json["isSoftRemoved"],
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
    createdBy: json["createdBy"],
    shopId: json["shopID"],
    userId: json["userID"],
    description: json["description"],
    title: json["title"],
    defaultThumbnail: json["defaultThumbnail"] == null ? null : json["defaultThumbnail"],
    categoryId: json["categoryID"],
    slug: json["slug"],
    inputUrl: json["inputURL"],
    linkStream: json["linkStream"],
    linkThumbnailImage: json["linkThumbnailImage"],
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    rtmpUpdatedTime: json["rtmpUpdatedTime"] == null ? null : DateTime.parse(json["rtmpUpdatedTime"]),
    heightScreen: json["heightScreen"] == null ? null : json["heightScreen"],
    startTime: json["startTime"] == null ? null : json["startTime"],
    thumbnail: json["thumbnail"] == null ? null : json["thumbnail"],
    widthScreen: json["widthScreen"] == null ? null : json["widthScreen"],
    orderSyntax: json["orderSyntax"] == null ? null : json["orderSyntax"],
    orderSyntaxId: json["orderSyntaxID"] == null ? null : json["orderSyntaxID"],
    duration: json["duration"] == null ? null : json["duration"].toDouble(),
    endTime: json["endTime"] == null ? null : json["endTime"],
    linkVideo: json["linkVideo"] == null ? null : json["linkVideo"],
    listLive: List<ListLive>.from(json["listLive"].map((x) => ListLive.fromJson(x))),
    listLiveManual: List<dynamic>.from(json["listLiveManual"].map((x) => x)),
    listLiveIg: List<dynamic>.from(json["listLiveIG"].map((x) => x)),
    shopName: json["shopName"],
    avatarOwner: json["avatarOwner"] == null ? null : json["avatarOwner"],
    countReactionXx: json["countReactionXX"] == null ? null : json["countReactionXX"],
  );

  Map<String?, dynamic> toJson() => {
    "_id": id,
    "status": status,
    "isSoftRemoved": isSoftRemoved == null ? null : isSoftRemoved,
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
    "createdBy": createdBy,
    "shopID": shopId,
    "userID": userId,
    "description": description,
    "title": title,
    "defaultThumbnail": defaultThumbnail == null ? null : defaultThumbnail,
    "categoryID": categoryId,
    "slug": slug,
    "inputURL": inputUrl,
    "linkStream": linkStream,
    "linkThumbnailImage": linkThumbnailImage,
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt.toIso8601String(),
    "rtmpUpdatedTime": rtmpUpdatedTime == null ? null : rtmpUpdatedTime?.toIso8601String(),
    "heightScreen": heightScreen == null ? null : heightScreen,
    "startTime": startTime == null ? null : startTime,
    "thumbnail": thumbnail == null ? null : thumbnail,
    "widthScreen": widthScreen == null ? null : widthScreen,
    "orderSyntax": orderSyntax == null ? null : orderSyntax,
    "orderSyntaxID": orderSyntaxId == null ? null : orderSyntaxId,
    "duration": duration == null ? null : duration,
    "endTime": endTime == null ? null : endTime,
    "linkVideo": linkVideo == null ? null : linkVideo,
    "listLive": List<dynamic>.from(listLive.map((x) => x.toJson())),
    "listLiveManual": List<dynamic>.from(listLiveManual.map((x) => x)),
    "listLiveIG": List<dynamic>.from(listLiveIg.map((x) => x)),
    "shopName": shopName,
    "avatarOwner": avatarOwner == null ? null : avatarOwner,
    "countReactionXX": countReactionXx == null ? null : countReactionXx,
  };
}

class ListLive {
  ListLive({
    required this.id,
    required this.onProfile,
    required this.isCross,
    required this.crossError,
    required this.status,
    required this.isSoftRemoved,
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
    required this.streamUrl,
    required this.linkFacebook,
    required this.linkLive,
    required this.secureStreamUrl,
    required this.title,
    required this.description,
    required this.createdAt,
    required this.updatedAt,
    required this.embedHtml,
    required this.linkVideo,
  });

  final String? id;
  final bool? onProfile;
  final bool? isCross;
  final bool? crossError;
  final Status? status;
  final bool? isSoftRemoved;
  final bool? isRemovedFb;
  final int? countReactions;
  final int? totalViews;
  final int? countShares;
  final String? campaignId;
  final String? userId;
  final String? createdBy;
  final String? shopId;
  final String? nameUserFb;
  final String? pictureUserFb;
  final String? nameFb;
  final String? picture;
  final String? userFacebookId;
  final String? pageFacebookId;
  final String? pageId;
  final String? liveId;
  final ObjectType objectType;
  final String? videoId;
  final String? postId;
  final String? streamUrl;
  final String? linkFacebook;
  final String? linkLive;
  final String? secureStreamUrl;
  final String? title;
  final String? description;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String? embedHtml;
  final String? linkVideo;

  factory ListLive.fromJson(Map<String?, dynamic> json) => ListLive(
    id: json["_id"],
    onProfile: json["onProfile"],
    isCross: json["isCross"],
    crossError: json["crossError"] == null ? null : json["crossError"],
    status: statusValues.map[json["status"]],
    isSoftRemoved: json["isSoftRemoved"] == null ? null : json["isSoftRemoved"],
    isRemovedFb: json["isRemovedFB"],
    countReactions: json["countReactions"],
    totalViews: json["totalViews"],
    countShares: json["countShares"],
    campaignId: json["campaignID"],
    userId: json["userID"],
    createdBy: json["createdBy"],
    shopId: json["shopID"],
    nameUserFb: json["nameUserFB"],
    pictureUserFb: json["pictureUserFB"] == null ? null : json["pictureUserFB"],
    nameFb: json["nameFB"],
    picture: json["picture"],
    userFacebookId: json["userFacebookID"],
    pageFacebookId: json["pageFacebookID"] == null ? null : json["pageFacebookID"],
    pageId: json["pageID"] == null ? null : json["pageID"],
    liveId: json["liveID"],
    objectType: objectTypeValues.map[json["objectType"]],
    videoId: json["videoID"],
    postId: json["postID"],
    streamUrl: json["streamURL"] == null ? null : json["streamURL"],
    linkFacebook: json["linkFacebook"],
    linkLive: json["linkLive"],
    secureStreamUrl: json["secureStreamURL"] == null ? null : json["secureStreamURL"],
    title: json["title"],
    description: json["description"],
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    embedHtml: json["embedHTML"] == null ? null : json["embedHTML"],
    linkVideo: json["linkVideo"] == null ? null : json["linkVideo"],
  );

  Map<String?, dynamic> toJson() => {
    "_id": id,
    "onProfile": onProfile,
    "isCross": isCross,
    "crossError": crossError == null ? null : crossError,
    "status": statusValues.reverse[status],
    "isSoftRemoved": isSoftRemoved == null ? null : isSoftRemoved,
    "isRemovedFB": isRemovedFb,
    "countReactions": countReactions,
    "totalViews": totalViews,
    "countShares": countShares,
    "campaignID": campaignId,
    "userID": userId,
    "createdBy": createdBy,
    "shopID": shopId,
    "nameUserFB": nameUserFb,
    "pictureUserFB": pictureUserFb == null ? null : pictureUserFb,
    "nameFB": nameFb,
    "picture": picture,
    "userFacebookID": userFacebookId,
    "pageFacebookID": pageFacebookId == null ? null : pageFacebookId,
    "pageID": pageId == null ? null : pageId,
    "liveID": liveId,
    "objectType": objectTypeValues.reverse[objectType],
    "videoID": videoId,
    "postID": postId,
    "streamURL": streamUrl == null ? null : streamUrl,
    "linkFacebook": linkFacebook,
    "linkLive": linkLive,
    "secureStreamURL": secureStreamUrl == null ? null : secureStreamUrl,
    "title": title,
    "description": description,
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt.toIso8601String(),
    "embedHTML": embedHtml == null ? null : embedHtml,
    "linkVideo": linkVideo == null ? null : linkVideo,
  };
}

enum ObjectType { PAGE, USER }

final dynamic objectTypeValues = EnumValues({
  "PAGE": ObjectType.PAGE,
  "USER": ObjectType.USER
});

enum Status { VOD, UNPUBLISHED }

final dynamic statusValues = EnumValues({
  "UNPUBLISHED": Status?.UNPUBLISHED,
  "VOD": Status?.VOD
});

class EnumValues<T> {
  Map<String?, T> map;
  late Map<T, String?> reverseMap;

  EnumValues(this.map);

  Map<T, String?> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
