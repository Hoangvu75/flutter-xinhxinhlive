// To parse this JSON data, do
//
//     final categoryResponseModel = categoryResponseModelFromJson(jsonString);

import 'dart:convert';

CategoryResponseModel categoryResponseModelFromJson(String str) => CategoryResponseModel.fromJson(json.decode(str));

String categoryResponseModelToJson(CategoryResponseModel data) => json.encode(data.toJson());

class CategoryResponseModel {
  CategoryResponseModel({
    required this.success,
    required this.data,
    this.message,
    this.mCode,
  });

  bool success;
  List<Datum> data;
  dynamic message;
  dynamic mCode;

  factory CategoryResponseModel.fromJson(Map<String, dynamic> json) => CategoryResponseModel(
    success: json["success"],
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    message: json["message"],
    mCode: json["mCode"],
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "data": List<dynamic>.from(data!.map((x) => x.toJson())),
    "message": message,
    "mCode": mCode,
  };
}

class Datum {
  Datum({
    required this.status,
    required this.isDefault,
    required this.id,
    required this.name,
    required this.imageUrl,
  });

  String status;
  bool isDefault;
  String id;
  String name;
  String imageUrl;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    status: json["status"],
    isDefault: json["isDefault"],
    id: json["_id"],
    name: json["name"],
    imageUrl: json["imageUrl"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "isDefault": isDefault,
    "_id": id,
    "name": name,
    "imageUrl": imageUrl,
  };
}
