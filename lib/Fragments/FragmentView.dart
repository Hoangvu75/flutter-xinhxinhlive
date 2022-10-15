import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class FragmentView extends StatefulWidget {
  const FragmentView({super.key});

  @override
  _FragmentView createState() => _FragmentView();
}

class _FragmentView extends State<FragmentView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF212121),
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 16 / 9,
                viewportFraction: 1,
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
              items: [1,2,3,4,5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        color: Colors.blue[i*100],
                      ),
                      child: Text(i.toString()),
                    );
                  },
                );
              }).toList(),
            ),
          ]
      ),
    );
  }

}