import 'package:flutter/material.dart';
import 'package:netflixclone/dummyDb.dart';
import 'package:netflixclone/utils/color_constants.dart';
import 'package:netflixclone/view/global_widget/username_card.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstants.mainColor,
        body: Column(
          children: [
            SizedBox(
              height: 38,
            ),

            // USerSElectionSection
            _buildUserSelectionSection(),

            SizedBox(
              height: 15,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.edit,
                  size: 20,
                  color: Colors.white,
                ),
                Text(
                  'Manage Profiles',
                  style: TextStyle(color: ColorConstants.mainWhite),
                )
              ],
            ),

            SizedBox(
              height: 15,
            ),

            Container(
              padding: EdgeInsets.only(top: 19, right: 9, left: 16),
              height: 300,
              color: ColorConstants.lightGrey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.chat_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Tell friends about Netflix',
                        style: TextStyle(color: Colors.white, fontSize: 19.63),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,',
                    style: TextStyle(color: Colors.white, fontSize: 13.78),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Terms & Conditions',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationColor: ColorConstants.mainWhite,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                      fontSize: 11,
                      color: ColorConstants.mainWhite,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(child: TextFormField()),
                      Container(
                        height: 37,
                        width: 96,
                        decoration: BoxDecoration(color: Colors.white),
                        child: Center(
                            child: Text(
                          'Copy Link',
                          style: TextStyle(
                              color: ColorConstants.mainBlack,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUserSelectionSection() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 9),
        child: Row(
          children: List.generate(
            Dummydb.user_list.length + 1,
            (index) => Padding(
                padding: const EdgeInsets.only(right: 9),
                child: index < Dummydb.user_list.length
                    ? UserNameCard(
                        height: index == 0 ? 68 : 60,
                        width: index == 0 ? 73 : 65,
                        imag: Dummydb.user_list[index]['imagePath'],
                        name: Dummydb.user_list[index]['Name'])
                    : Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1, color: Colors.white)),
                            height: 60,
                            width: 65,
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                          Text('',
                              style: TextStyle(color: Colors.white, height: 2))
                        ],
                      )),
          ),
        ));
  }
}
