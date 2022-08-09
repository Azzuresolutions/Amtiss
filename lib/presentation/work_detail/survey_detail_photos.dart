import 'package:amtiss/application/survery/photos_bloc.dart';
import 'package:amtiss/domain/survey/models/photo_model.dart';
import 'package:amtiss/presentation/work_detail/survey_photo_slide.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SurveyPhotos extends StatefulWidget {
  int? surveyId;

  SurveyPhotos(this.surveyId, {Key? key}) : super(key: key);

  @override
  State<SurveyPhotos> createState() => _SurveyPhotosState();
}

class _SurveyPhotosState extends State<SurveyPhotos> {
  List<PhotoModelData> photos = [];

  @override
  void initState() {
    BlocProvider.of<PhotoBloc>(context).add(
      PhotoEvent.photos(
        id: widget.surveyId,
        // id: 466,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PhotoBloc, PhotoState>(
      builder: (context, state) {
        state.state.maybeWhen(
            success: (photos) {
              this.photos = photos;
            },
            orElse: () {});
        return (photos.isEmpty)
            ? Center(
                child: Text("No Photos Found."),
              )
            : ListView.builder(
                itemCount: photos.length,
                shrinkWrap: true,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(top: 5, left: 20.0, right: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15, bottom: 5),
                            child: Text(
                              photos[index].name.toString(),
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PhotoSlide(photos),
                              ));
                          // showDialog(
                          //   context: context,
                          //   builder: (BuildContext context) => AlertDialog(
                          //     content: Image.network(
                          //         "https://v4.amtiss.com/web/image?model=ir.attachment&id=${photos[index].id}"),
                          //   ),
                          // );
                        },
                        child: Container(
                          height: 200,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                "https://v4.amtiss.com/web/image?model=ir.attachment&id=${photos[index].id}",
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
      },
    );
  }
}
