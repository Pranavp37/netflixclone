import 'package:flutter/material.dart';

import 'package:netflixclone/utils/color_constants.dart';

class SearchScreenCard extends StatelessWidget {
  const SearchScreenCard({super.key, required this.title, required this.url});
  final String title;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstants.lightGrey,
      child: Row(
        children: [
          Image.network(
            url,
            height: 76,
            width: 146,
            fit: BoxFit.cover,
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            title,
            style: TextStyle(color: ColorConstants.mainWhite, fontSize: 15),
          ),
          Spacer(),
          Icon(
            Icons.play_circle_outlined,
            color: ColorConstants.mainWhite,
            size: 28,
          )
        ],
      ),
    );
  }
}
