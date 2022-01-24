import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselwithDotsPage extends StatefulWidget {
  List<String> imageList;
  CarouselwithDotsPage({required this.imageList});

  @override
  State<CarouselwithDotsPage> createState() => _CarouselwithDotsPageState();
}

class _CarouselwithDotsPageState extends State<CarouselwithDotsPage> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = widget.imageList
        .map((item) => Container(
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
              ),
            ))
        .toList();

    return Column(
      children: [
        CarouselSlider(
          items: imageSliders,
          options: CarouselOptions(
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              // autoPlayInterval: Duration(seconds: 1),
              scrollDirection: Axis.horizontal,
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 2.0,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.imageList.map((imgUrl) {
            int index = widget.imageList.indexOf(imgUrl);
            return Container(
              width: 8,
              height: 8,
              margin: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 3,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _current == index
                    ? Color(0xff01a8dd)
                    : Color.fromRGBO(0, 0, 0, 0.4),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
