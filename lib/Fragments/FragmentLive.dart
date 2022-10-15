import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../Widget/BroadcastWidget.dart';
import '../Widget/CategoryWidget.dart';

class FragmentLive extends StatefulWidget {
  late CategoryWidget categoryWidget;
  late BroadcastWidget broadcastWidgetNewest;
  late BroadcastWidget broadcastWidgetTopViews;

  FragmentLive({super.key});

  @override
  _FragmentLive createState() => _FragmentLive();
}

class _FragmentLive extends State<FragmentLive> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    onSetVariables();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF212121),
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          widget.broadcastWidgetNewest.resetBroadcastWidget();
          widget.broadcastWidgetTopViews.resetBroadcastWidget();
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                ),
                items: ["assets/img.png","assets/img_1.png","assets/img_2.png"].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Image.asset(i),
                      );
                    },
                  );
                }).toList(),
              ),
              widget.categoryWidget,
              widget.broadcastWidgetNewest,
              widget.broadcastWidgetTopViews
            ],
          ),
        ),
      ),
    );
  }

  void onSetVariables() {
    widget.categoryWidget = CategoryWidget();
    widget.broadcastWidgetNewest = BroadcastWidget("Mới nhất", "newest");
    widget.broadcastWidgetTopViews = BroadcastWidget("Xem nhiều", "top_views");
  }
}