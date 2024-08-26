import 'package:flutter/material.dart';
import 'package:netflixclone/dummyDb.dart';
import 'package:netflixclone/utils/color_constants.dart';
import 'package:netflixclone/utils/image_constants.dart';
import 'package:netflixclone/view/home_screen/widget/custom_poster_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //#1 top ten section
            _buildTopTenSection(),
            _buildPlayButtonSection(),
            SizedBox(
              height: 20,
            ),
            CustomPosterBuilder(
              imageList: Dummydb.imagesList1,
              title: 'Previews',
            ),
            CustomPosterBuilder(
              imageList: Dummydb.imagesList1,
              title: 'Continue Watching for Emenalo',
              isCircle: false,
            ),
            CustomPosterBuilder(
              imageList: Dummydb.imagesList1,
              title: 'Continue Watching for Emena',
              isCircle: false,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPlayButtonSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                '+',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              Text(
                'My List',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ],
          ),
          Container(
            height: 55,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.0),
                color: Color(0xffc4c4c4)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.play_arrow,
                  color: Colors.black,
                  size: 22,
                ),
                Text(
                  'Play',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          Column(
            children: [
              Icon(
                Icons.info_outline,
                color: Colors.white,
                size: 24,
              ),
              Text(
                'info',
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTopTenSection() {
    return Stack(
      children: [
        Container(
          height: 415,
          decoration: BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(Dummydb.HomeScreenFirstImag),
          )),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 35),
          height: 415,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [
                Colors.transparent,
                Colors.black,
              ])),
          child: Container(
            height: 400,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(Dummydb.netflixLogo),
                    Text(
                      'Tv Shows',
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                    Text(
                      'Movies',
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                    Text(
                      'My List',
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ],
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100),
                  child: Row(
                    children: [
                      Image.asset(
                        ImageConstants.HomeScreen_top10Image,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '#2 in Nigeria Today',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
