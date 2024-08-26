import 'package:flutter/material.dart';
import 'package:netflixclone/dummyDb.dart';
import 'package:netflixclone/utils/color_constants.dart';

class CustomPosterBuilder extends StatelessWidget {
  const CustomPosterBuilder(
      {super.key,
      this.imageList = const [],
      required this.title,
      this.isCircle = true,
      this.height = 177,
      this.width = 103});
  final String title;
  final bool isCircle;
  final double height;
  final double width;
  final List<String> imageList;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: ColorConstants.mainWhite,
              fontSize: 20.92,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 24,
          ),
          SizedBox(
            height: isCircle ? width : height,
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: Dummydb.imagesList1.length,
              itemBuilder: (context, index) => Container(
                height: height,
                width: width,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(imageList[index]))),
              ),
              separatorBuilder: (context, index) => SizedBox(
                width: 7,
              ),
            ),
          )
        ],
      ),
    );
  }
}
