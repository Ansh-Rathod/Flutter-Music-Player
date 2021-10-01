import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:musicbanner/controller/home_controller.dart';
import 'package:musicbanner/models/song_model.dart';
import 'package:musicbanner/widgets/blur_container.dart';

class NewSongPageview extends StatelessWidget {
  final List<SongModel> allSongs;
  final NowPlayingController controller;
  const NewSongPageview({
    Key? key,
    required this.allSongs,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<SongModel> newSongs = allSongs;
    newSongs..shuffle();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26.0),
      child: SizedBox(
        height: 160,
        child: PageView(
          children: [
            for (int i = 0; i < 10; i++)
              GestureDetector(
                onTap: () {
                  if (!controller.isAllSongPlaylist) {
                    controller.changetoAllsongPlaylist(i);
                    controller.player.play();
                  }
                  controller.player.seek(Duration.zero, index: i);
                  controller.player.play();
                },
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: BlurryContainer(
                        child: CachedNetworkImage(
                          imageUrl: newSongs[i].album!,
                          height: 160,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        blur: 10,
                        bgColor: Colors.black12,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      height: 160,
                      alignment: Alignment.bottomLeft,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.black,
                            Colors.transparent,
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.center,
                        ),
                      ),
                      child: Row(
                        children: [
                          const Icon(CupertinoIcons.play, color: Colors.white),
                          const SizedBox(width: 10),
                          Flexible(
                            flex: 2,
                            child: Container(
                              child: Text(
                                newSongs[i].song!,
                                maxLines: 1,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
