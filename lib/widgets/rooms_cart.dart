import 'package:club_house_ui/data.dart';
import 'package:club_house_ui/widgets/user_profile_image.dart';
import 'package:flutter/material.dart';

class RoomsCart extends StatelessWidget {
  final Room room;

  const RoomsCart({Key? key, required this.room}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${room.club}⛪".toUpperCase(),
                style: Theme.of(context).textTheme.overline!.copyWith(
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.6,
                    fontSize: 12.0),
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                room.name,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontSize: 15.0, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Stack(
                    children: [
                      Positioned(left: 28.0,top: 28.0,)
                      UserProfileImage(
                        imageUrl: room.speakers[0].imageUrl,
                        size: 48.0,
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
