import 'package:flutter/material.dart';
import 'package:netflixclone/dummyDb.dart';
import 'package:netflixclone/utils/color_constants.dart';
import 'package:netflixclone/view/search_screen/widget/search_screen_card.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstants.mainBlack,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 10),
                    prefixIcon: Icon(
                      Icons.search,
                      color: ColorConstants.mainWhite,
                    ),
                    suffixIcon: Icon(
                      Icons.mic,
                      color: ColorConstants.mainWhite,
                    ),
                    border: InputBorder.none,
                    filled: true,
                    fillColor: ColorConstants.lightGrey,
                    hintText: 'Search for a show, movie, genre, e.t.c.',
                    hintStyle: TextStyle(
                      fontSize: 15,
                      color: ColorConstants.mainWhite,
                    ))),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Top Searches',
                style: TextStyle(
                    color: ColorConstants.mainWhite,
                    fontSize: 27,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => SearchScreenCard(
                      title: Dummydb.searchScreenData[index]['title'],
                      url: Dummydb.searchScreenData[index]['url']),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 5,
                      ),
                  itemCount: Dummydb.searchScreenData.length),
            )
          ],
        ),
      ),
    );
  }
}
