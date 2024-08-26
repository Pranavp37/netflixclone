import 'package:flutter/material.dart';
import 'package:netflixclone/dummyDb.dart';
import 'package:netflixclone/utils/color_constants.dart';
import 'package:netflixclone/utils/image_constants.dart';
import 'package:netflixclone/view/bottom_nav_screen/bottom_nav_screen.dart';
import 'package:netflixclone/view/global_widget/username_card.dart';
import 'package:netflixclone/view/home_screen/home_screen.dart';

class UserSelection extends StatelessWidget {
  const UserSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstants.mainColor,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: ColorConstants.mainColor,
          title: SizedBox(
            width: 150,
            height: 150,
            child: Image.asset(ImageConstants.netflix_logo),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Icon(
                Icons.edit,
                color: Colors.white,
                size: 30,
              ),
            ),
          ],
        ),
        body: Center(
          child: GridView.builder(
            padding: EdgeInsets.all(72.0),
            shrinkWrap: true,
            itemCount: Dummydb.user_list.length + 1,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 25,
                mainAxisSpacing: 22,
                crossAxisCount: 2,
                mainAxisExtent: 121),
            itemBuilder: (context, index) => index < Dummydb.user_list.length
                ? UserNameCard(
                    imag: Dummydb.user_list[index]['imagePath']!,
                    name: Dummydb.user_list[index]['Name']!,
                    onCardTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BottomNavbarScreen(),
                        )),
                  )
                : UserNameCard(
                    onCardTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BottomNavbarScreen(),
                        )),
                    imag: 'assets/images/Group 1.png',
                    name: 'Add Profile'),
          ),
        ));
  }
}
