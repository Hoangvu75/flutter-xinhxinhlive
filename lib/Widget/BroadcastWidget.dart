import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../ApiConst/ApiLink.dart';
import '../ApiConst/Authorization.dart';
import '../Icons/my_flutter_app_icons.dart';
import '../Model/NewestBroadcastResponseModel.dart';
import '../Model/TopViewsBroadcastResponseModel.dart';

class BroadcastWidget extends StatefulWidget {
  final String title;
  final String type;

  BroadcastWidget(this.title, this.type, {super.key});

  late ScrollController scrollControllerForBroadcast;
  late int broadcastLoadCount;
  late RxList<dynamic> broadcastModelList;

  void resetBroadcastWidget () {
    broadcastLoadCount = 2;
    broadcastModelList.clear();
    getBroadcastResponseModel(type, broadcastModelList);
  }

  Future<RxList> getBroadcastResponseModel(String type, RxList<dynamic> broadcastModelList) async {
    var dio = Dio();
    final response = await dio.get(ApiLink().getUrlBroadcast(10, 1, type));
    dynamic broadcastResponseModel;
    if (type == "newest") {
      broadcastResponseModel = newestBroadcastResponseModelFromJson(response.toString());
    } else if (type == "top_views") {
      broadcastResponseModel = topViewsBroadcastResponseModelFromJson(response.toString());
    }
    for (int i = 0; i < broadcastResponseModel.data.newest.data.length; i++) {
      broadcastModelList.add(broadcastResponseModel.data.newest.data[i]);
    }
    return broadcastModelList;
  }

  @override
  _BroadcastWidget createState() => _BroadcastWidget();
}

class _BroadcastWidget extends State<BroadcastWidget> {
  @override
  void initState() {
    super.initState();

    onSetVariables();
    onSetFunctions();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: Column(
          children: [
            Row(
              children: [
                Text(widget.title,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 17, color: Colors.white
                    )
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 300,
              child: FutureBuilder(
                future: widget.getBroadcastResponseModel(widget.type, widget.broadcastModelList),
                builder: (context, AsyncSnapshot snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Container();
                  }
                  if (snapshot.hasData) {
                    return Obx(() =>
                        ListView.builder(
                          controller: widget.scrollControllerForBroadcast,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                              child: SizedBox(
                                width: 150,
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
                                                  widget.broadcastModelList[index].thumbnail.toString(),
                                                  width: 150,
                                                  height: 300,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              (widget.broadcastModelList[index].status.toString() == "LIVE") ?
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
                                        )
                                    ),
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            Flexible(
                                              child: Text(widget.broadcastModelList[index].title.toString().replaceAll("\n", ""),
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
                                                    Text(widget.broadcastModelList[index].countReactions.toString(),
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
                                                      Text(widget.broadcastModelList[index].maxCountViews.toString(),
                                                          style: const TextStyle(
                                                              fontWeight: FontWeight.w500,
                                                              fontSize: 15,
                                                              color: Colors.white),
                                                          overflow: TextOverflow.ellipsis
                                                      ),
                                                    ]
                                                )
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                          itemCount: widget.broadcastModelList.length,
                          scrollDirection: Axis.horizontal,
                        )
                    );
                  }
                  return Container();
                },
              ),
            ),
          ]
      ),
    );
  }

  void loadMoreDataBroadcastInScrollController2(String type, RxList<dynamic> broadcastModelList, int broadcastLoadCount) async {
    var dio = Dio();
    final response = await dio.get(ApiLink().getUrlBroadcast(10, broadcastLoadCount, type));

    if (type == "newest") {
      final broadcastResponseModel = newestBroadcastResponseModelFromJson(response.toString());
      for (int i = 0; i < broadcastResponseModel.data.newest.data.length; i++) {
        broadcastModelList.add(broadcastResponseModel.data.newest.data[i]);
      }
    } else if (type == "top_views") {
      final broadcastResponseModel = topViewsBroadcastResponseModelFromJson(response.toString());
      for (int i = 0; i < broadcastResponseModel.data.newest.data.length; i++) {
        broadcastModelList.add(broadcastResponseModel.data.newest.data[i]);
      }
    }
  }

  void onSetVariables () {
    widget.scrollControllerForBroadcast = ScrollController();
    widget.broadcastLoadCount = 2;
    widget.broadcastModelList = [].obs;
    widget.broadcastModelList.clear();
  }

  void onSetFunctions () {
    widget.scrollControllerForBroadcast.addListener(() {
      if (widget.scrollControllerForBroadcast.position.pixels == widget.scrollControllerForBroadcast.position.maxScrollExtent) {
        loadMoreDataBroadcastInScrollController2(widget.type, widget.broadcastModelList, widget.broadcastLoadCount);
        widget.broadcastLoadCount++;
      }
    });
  }
}

