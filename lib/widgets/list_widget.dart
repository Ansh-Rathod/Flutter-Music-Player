import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:musicbanner/controller/home_controller.dart';
import 'package:musicbanner/models/song_model.dart';
import 'package:musicbanner/profile/singer_profile.dart';
import 'package:musicbanner/widgets/blur_container.dart';
import 'package:provider/provider.dart';

import 'bottom_sheet.dart';

class ListWidget extends StatefulWidget {
  final List<SongModel> allsongs;
  const ListWidget({Key? key, required this.allsongs}) : super(key: key);

  @override
  State<ListWidget> createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NowPlayingController>(
      builder: (context, controller, child) {
        return ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: widget.allsongs.length,
          itemBuilder: (context, i) {
            final song = widget.allsongs[i];

            return InkWell(
              onTap: () {
                if (!controller.isAllSongPlaylist) {
                  controller.changetoAllsongPlaylist(i);
                  controller.player.play();
                }
                controller.player.seek(Duration.zero, index: i);
                controller.player.play();
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 26,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 6,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            child: Row(
                              children: [
                                CachedNetworkImage(
                                  imageUrl: song.album!,
                                  height: 50,
                                  width: 50,
                                  fit: BoxFit.cover,
                                ),
                                Flexible(
                                  child: Container(
                                    child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                                  builder: (context) =>
                                                      ArtistProfile(
                                                    name: song.artist!,
                                                    controller: controller,
                                                  ),
                                                ),
                                              );
                                            },
                                            child: Text(
                                              song.artist!,
                                              style: TextStyle(
                                                color: Colors.white
                                                    .withOpacity(.4),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                            onPressed: () {
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
                            icon: Icon(
                              Icons.more_horiz_outlined,
                              color: Colors.white.withOpacity(.8),
                              size: 30.0,
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.white.withOpacity(.2),
                      thickness: 1.5,
                    )
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
