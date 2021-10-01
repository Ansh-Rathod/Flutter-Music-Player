import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

import 'package:musicbanner/controller/home_controller.dart';
import 'package:musicbanner/models/song_model.dart';
import 'package:musicbanner/profile/singer_profile.dart';
import 'package:musicbanner/widgets/play_button.dart';

import 'blur_container.dart';

class SongBanner extends StatefulWidget {
  final AudioPlayer player;
  final NowPlayingController controller;
  const SongBanner({
    Key? key,
    required this.player,
    required this.controller,
  }) : super(key: key);

  @override
  State<SongBanner> createState() => _SongBannerState();
}

class _SongBannerState extends State<SongBanner> {
  @override
  Widget build(BuildContext context) {
    return BlurryContainer(
      bgColor: Colors.black12,
      blur: 50,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 5,
          horizontal: 20,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Flexible(
              child: Container(
                child: StreamBuilder<SequenceState?>(
                    stream: widget.player.sequenceStateStream,
                    builder: (context, snapshot) {
                      final state = snapshot.data;
                      if (state?.sequence.isEmpty ?? true) {
                        return const SizedBox();
                      }
                      final metadata = state!.currentSource!.tag as SongModel;
                      return Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Hero(
                            tag: metadata.album!,
                            child: CachedNetworkImage(
                              imageUrl: metadata.album!,
                              height: 50,
                              width: 50,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      metadata.song!,
                                      maxLines: 1,
                                      overflow: TextOverflow.clip,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      metadata.artist!,
                                      style: TextStyle(
                                        color: Colors.white.withOpacity(.4),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white.withOpacity(.2),
                  )),
              child: Center(child: PlayButton(player: widget.player)),
            ),
          ],
        ),
      ),
    );
  }
}
