import 'package:flutter/material.dart';
import 'package:flutter_project/ApiConst/Authorization.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:dio/dio.dart';

import '../ApiConst/ApiLink.dart';
import '../Icons/my_flutter_app_icons.dart';
import '../Model/BroadcastByCategoryResponseModel.dart';
import '../Model/CategoryResponseModel.dart';

class CategoryWidget extends StatefulWidget {
  late RxList<dynamic> categoryModelList;
  late String currentCategoryID;

  late int broadcastLoadCountOfByCategory;
  late ScrollController scrollControllerForBroadcastByCategory;
  late RxList<dynamic> broadcastModelListOfByCategory;

  CategoryWidget({super.key});

  Future<RxList> getCategoryResponseModel() async {
    var dio = Dio();

    final response = await dio.get(ApiLink().getUrlCategory());
    final categoryResponseModel = categoryResponseModelFromJson(response.toString());

    for (int i = 0; i < categoryResponseModel.data.length; i++) {
      categoryModelList.add(categoryResponseModel.data[i]);
    }
    return categoryModelList;
  }
  Future<RxList> getBroadcastResponseModelByCategory(String categoryID, RxList<dynamic> broadcastByCategoryModelList) async {
    var dio = Dio();

    final response = await dio.get(ApiLink().getUrlBroadcastByCategory(1, 10, categoryID));
    final broadcastByCategoryResponseModel = broadcastByCategoryResponseModelFromJson(response.toString());

    for (int i = 0; i < broadcastByCategoryResponseModel.data.results.length; i++) {
      broadcastByCategoryModelList.add(broadcastByCategoryResponseModel.data.results[i]);
    }
    return broadcastByCategoryModelList;
  }

  @override
  _CategoryWidget createState() => _CategoryWidget();
}

class _CategoryWidget extends State<CategoryWidget> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    onSetVariables();
    onSetFunction();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(5, 5, 5, 30),
      child: Column(
          children: [
            SizedBox(
                height: 94,
                child: FutureBuilder(
                  future: widget.getCategoryResponseModel(),
                  builder: (context, AsyncSnapshot snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Container();
                    }
                    if (snapshot.hasData) {
                      return ListView.builder(
                        itemBuilder: (context, index) {
                          return SizedBox(
                            width: 80,
                            child: Column(
                              children: <Widget> [
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(width: 3, color: Colors.pink),
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      displayCategoryBroadcastScreen(widget.categoryModelList[index].name.toString());
                                      widget.currentCategoryID = widget.categoryModelList[index].id;
                                      widget.broadcastModelListOfByCategory.clear();
                                    },
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(100.0),
                                        child: Image.network(
                                          widget.categoryModelList[index].imageUrl.toString(),
                                          width: 55,
                                          height: 55,
                                          fit: BoxFit.cover,
                                        )
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10
                                ),
                                Text(widget.categoryModelList[index].name.toString(),
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 13,
                                        color: Colors.white)
                                ),
                              ],
                            ),
                          );
                        },
                        itemCount: widget.categoryModelList.length,
                        scrollDirection: Axis.horizontal,
                      );
                    }
                    return Container();
                  },
                )
            ),
          ]
      ),
    );
  }

  void displayCategoryBroadcastScreen(String category) {
    widget.broadcastLoadCountOfByCategory = 2;
    Navigator.of(context).push(MaterialPageRoute<String>(
      builder: (BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text(category),
            backgroundColor: const Color(0xFF212121),
          ),
          body: Container(
              color: const Color(0xFF212121),
              child: FutureBuilder(
                  future: widget.getBroadcastResponseModelByCategory(widget.currentCategoryID, widget.broadcastModelListOfByCategory),
                  builder: (context, AsyncSnapshot snapshot) {
                    return Obx(() =>
                        GridView.builder(
                            controller: widget.scrollControllerForBroadcastByCategory,
                            itemBuilder: (context, index) {
                              if (snapshot.connectionState == ConnectionState.waiting) {
                                return Container();
                              }
                              if (snapshot.hasData) {
                                return Container(
                                  margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                  child: Column(
                                    children: <Widget> [
                                      Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(width: 2, color: Colors.pink),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        width: 150,
                                        height: 230,
                                        child: Stack(
                                            children: <Widget>[
                                              ClipRRect(
                                                borderRadius: BorderRadius.circular(10.0),
                                                child: Image.network(
                                                  widget.broadcastModelListOfByCategory[index].thumbnail.toString(),
                                                  width: 150,
                                                  height: 230,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              (widget.broadcastModelListOfByCategory[index].status.toString() == "LIVE") ?
                                              Container(
                                                margin: const EdgeInsets.all(10),
                                                decoration: BoxDecoration(
                                                  color: Colors.pink,
                                                  border: Border.all(width: 2, color: Colors.pink),
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                                child: Container(
                                                  padding: const EdgeInsets.all(5),
                                                  child: const Text(
                                                    "LIVE",
                                                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0),
                                                  ),
                                                ),
                                              ) : Container(),
                                            ]
                                        ),
                                      ),
                                      SizedBox(
                                        width: 150,
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Flexible(
                                                  child: Text(widget.broadcastModelListOfByCategory[index].title.toString().replaceAll("\n", ""),
                                                      style: const TextStyle(
                                                          fontWeight: FontWeight.w500,
                                                          fontSize: 15,
                                                          color: Colors.white),
                                                      overflow: TextOverflow.ellipsis
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                SizedBox(
                                                  width: 75,
                                                  child: Row(
                                                      children: [
                                                        const Icon(MyFlutterApp.heart, color: Colors.redAccent),
                                                        Text(widget.broadcastModelListOfByCategory[index].countReactions.toString(),
                                                            style: const TextStyle(
                                                                fontWeight: FontWeight.w500,
                                                                fontSize: 15,
                                                                color: Colors.white),
                                                            overflow: TextOverflow.ellipsis
                                                        ),
                                                      ]
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 75,
                                                  child: Row(
                                                      children: [
                                                        const Icon(MyFlutterApp.remove_red_eye, color: Colors.blueAccent),
                                                        Text(widget.broadcastModelListOfByCategory[index].maxCountViews.toString(),
                                                            style: const TextStyle(
                                                                fontWeight: FontWeight.w500,
                                                                fontSize: 15,
                                                                color: Colors.white),
                                                            overflow: TextOverflow.ellipsis
                                                        ),
                                                      ]
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }
                              return Container();
                            },
                            itemCount: widget.broadcastModelListOfByCategory.length,
                            scrollDirection: Axis.vertical,
                            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 300,
                                childAspectRatio: 0.6,
                                crossAxisSpacing: 0,
                                mainAxisSpacing: 0)
                        )
                    );
                  }
              )
          ),
        );
      },
    ));
  }

  void loadMoreDataBroadcastByCategoryInScrollController(String categoryID, RxList<dynamic> broadcastByCategoryModelList, int broadcastLoadCount) async {
    var dio = Dio();

    final response = await dio.get(ApiLink().getUrlBroadcastByCategory(broadcastLoadCount, 10, categoryID));
    final broadcastByCategoryResponseModel = broadcastByCategoryResponseModelFromJson(response.toString());

    for (int i = 0; i < broadcastByCategoryResponseModel.data.results.length; i++) {
      broadcastByCategoryModelList.add(broadcastByCategoryResponseModel.data.results[i]);
    }
  }

  void onSetVariables () {
    widget.categoryModelList = [].obs;
    widget.categoryModelList.clear();
    widget.currentCategoryID = "";

    widget.broadcastLoadCountOfByCategory = 2;
    widget.scrollControllerForBroadcastByCategory= ScrollController();
    widget.broadcastModelListOfByCategory = [].obs;
  }

  void onSetFunction () {
    widget.scrollControllerForBroadcastByCategory.addListener(() {
      if (widget.scrollControllerForBroadcastByCategory.position.pixels == widget.scrollControllerForBroadcastByCategory.position.maxScrollExtent) {
        loadMoreDataBroadcastByCategoryInScrollController(widget.currentCategoryID, widget.broadcastModelListOfByCategory, widget.broadcastLoadCountOfByCategory);
        widget.broadcastLoadCountOfByCategory++;
      }
    });
  }
}