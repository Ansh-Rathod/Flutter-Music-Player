import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:musicbanner/profile/singer_profile.dart';
import 'package:musicbanner/widgets/bottom_sheet.dart';
import 'package:provider/provider.dart';

import 'package:musicbanner/controller/home_controller.dart';
import 'package:musicbanner/models/song_model.dart';

import 'blur_container.dart';

class HorizontalListWidget extends StatelessWidget {
  final NowPlayingController controller;
  final List<SongModel> allsongs;
  const HorizontalListWidget({
    Key? key,
    required this.controller,
    required this.allsongs,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: allsongs.length < 20 ? 10 : allsongs.length,
        itemBuilder: (context, i) {
          final song = allsongs[i];
          if (i == 0) {
            return const SizedBox(
              width: 20,
            );
          }
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onLongPress: () {
                showBottomSheet(
                  context: context,
                  builder: (context) {
                    return BoottomSheet(
                      controller: controller,
                      song: song,
                    );
                  },
                );
              },
              onTap: () {
                if (!controller.isAllSongPlaylist) {
                  controller.changetoAllsongPlaylist(i);
                  controller.player.play();
                }
                controller.player.seek(Duration.zero, index: i);
                controller.player.play();
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: BlurryContainer(
                  bgColor: Colors.black,
                  blur: 100,
                  child: Column(
                    children: [
                      CachedNetworkImage(
                        imageUrl: song.album!,
                        height: 170,
                        width: 200,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: 200,
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              song.song!,
                              maxLines: 1,
                              overflow: TextOverflow.clip,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ArtistProfile(
                                      name: song.artist!,
                                      controller: controller,
                                    ),
                                  ),
                                );
                              },
                              child: Text(
                                song.artist!,
                                style: TextStyle(
                                  color: Colors.white.withOpacity(.4),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
