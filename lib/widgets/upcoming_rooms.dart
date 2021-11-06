import 'package:club_house_ui/config/palette.dart';
import 'package:flutter/material.dart';

import '../data.dart';

class UpcomingRooms extends StatelessWidget {
  final List<Room> upcomingRooms;

  const UpcomingRooms({Key? key, required this.upcomingRooms})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Palette.secondaryBackground,
          borderRadius: BorderRadius.circular(20.0)),
      child: Padding(
        padding: const EdgeInsets.only(left: 32.0, top: 4.0, bottom: 4.0),
        child: Column(
          children: [
            UpcomingRooms.map(
              (e) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: e.club.isNotEmpty ? 2.0 : 0),
                      child: Text(e.time),
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (e.club.isNotEmpty)
                            Flexible(
                              child: Text(
                                "${e.club}⛪".toUpperCase(),
                                style: Theme.of(context)
                                    .textTheme
                                    .overline!
                                    .copyWith(
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 1.6),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          Flexible(
                              child: Text(
                            e.name,
                            overflow: TextOverflow.ellipsis,
                          )),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ).toList(),
          ],
        ),
      ),
    );
  }
}
