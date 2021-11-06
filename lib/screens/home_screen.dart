import 'package:club_house_ui/data.dart';
import 'package:club_house_ui/widgets/upcoming_rooms.dart';
import 'package:club_house_ui/widgets/user_profile_image.dart';
import 'package:club_house_ui/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(CupertinoIcons.search),
          iconSize: 28.0,
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.envelope_open),
            iconSize: 26.0,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(CupertinoIcons.calendar),
            iconSize: 28.0,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(CupertinoIcons.bell),
            iconSize: 28.0,
            onPressed: () {},
          ),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 10.0, 20.0, 20.0),
              child: UserProfileImage(
                imageUrl: currentUser.imageUrl,
                size: 36.0,
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 120.0),
        children: [
          UpcomingRooms(upcomingRooms:upcomingRoomsList),
          SizedBox(height: 12.0,),
          ...roomsList.map((e) => RoomsCart(room:e)),
        ],
      )
    );
  }
}
