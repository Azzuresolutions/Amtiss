import 'package:amtiss/domain/survey/models/photo_model.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class PhotoSlide extends StatefulWidget {
  List<PhotoModelData> photos;
  PhotoSlide(this.photos, {Key? key}) : super(key: key);

  @override
  State<PhotoSlide> createState() => _PhotoSlideState();
}

class _PhotoSlideState extends State<PhotoSlide> {
  CarouselController buttonCarouselController = CarouselController();
  int store = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          backgroundColor: Colors.white,
          title: Text(
            widget.photos[store].name.toString(),
            style: TextStyle(color: Colors.black, fontSize: 15),
          ),
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: CarouselSlider.builder(
              itemCount: widget.photos.length,
              itemBuilder: (context, index, realIndex) {
                store = index;
                return Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://v4.amtiss.com/web/image?model=ir.attachment&id=${widget.photos[index].id}"),
                    ),
                  ),
                );
              },
              carouselController: buttonCarouselController,
              options: CarouselOptions(
                autoPlay: false,
                enlargeCenterPage: true,
                viewportFraction: 1,
                aspectRatio: 0.7,
                initialPage: 2,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () => buttonCarouselController.previousPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.linear),
                  child: Text("Previous"),
                ),
                ElevatedButton(
                  onPressed: () => buttonCarouselController.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.linear),
                  child: Text("Next"),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
