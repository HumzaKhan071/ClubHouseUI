// ignore_for_file: prefer_const_constructors

import 'package:club_house_ui/widgets/user_profile_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoomUserProfile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final double size;
  final bool isNew;
  final bool isMuted;

  const RoomUserProfile(
      {Key? key,
      required this.imageUrl,
      required this.name,
      this.size = 48.0,
      this.isNew = false,
      this.isMuted = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
                padding: EdgeInsets.all(6.0),
                child: UserProfileImage(
                  imageUrl: imageUrl,
                  size: size,
                )),
            if (isNew)
              Positioned(
                left: 0,
                bottom: 0,
                child: Container(
                  padding: EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,

                      // ignore: prefer_const_literals_to_create_immutables
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0, 2),
                            blurRadius: 6.0)
                      ]),
                  alignment: Alignment.center,
                  child: Text(
                    "🎉",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ),
            if (isMuted)
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                    padding: EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,

                        // ignore: prefer_const_literals_to_create_immutables
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0, 2),
                              blurRadius: 6.0)
                        ]),
                    alignment: Alignment.center,
                    child: Icon(CupertinoIcons.mic_fill)),
              ),
          ],
        ),
        SizedBox(height: 4.0,),
        Flexible(
          child: Text(
            name,
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    );
  }
}
