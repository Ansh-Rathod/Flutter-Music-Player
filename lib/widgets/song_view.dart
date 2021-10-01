import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:just_audio/just_audio.dart';
import 'package:musicbanner/animations/fade_animation.dart';
import 'package:musicbanner/controller/home_controller.dart';
import 'package:musicbanner/models/song_model.dart';
import 'package:musicbanner/profile/singer_profile.dart';
import 'package:musicbanner/widgets/blur_container.dart';
import 'package:musicbanner/widgets/play_button.dart';
import 'package:musicbanner/widgets/seekbar.dart';

class SongView extends StatefulWidget {
  final NowPlayingController controller;
  const SongView({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  State<SongView> createState() => _SongViewState();
}

class _SongViewState extends State<SongView> {
  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: Scaffold(
        body: StreamBuilder<SequenceState?>(
            stream: widget.controller.player.sequenceStateStream,
            builder: (context, snapshot) {
              final state = snapshot.data;
              if (state?.sequence.isEmpty ?? true) return SizedBox();
              final metadata = state!.currentSource!.tag as SongModel;
              return Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(metadata.album!),
                  ),
                ),
                child: BlurryContainer(
                  bgColor: Colors.black,
                  blur: 40,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: Stack(
                      children: [
                        SingleChildScrollView(
                          physics: const BouncingScrollPhysics(),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(height: 130),
                              SlideAnimation(
                                Center(
                                  child: Hero(
                                    tag: metadata.album!,
                                    child: CachedNetworkImage(
                                      imageUrl: metadata.album!,
                                      width: MediaQuery.of(context).size.width *
                                          0.8,
                                      height:
                                          MediaQuery.of(context).size.width *
                                              0.8,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SlideAnimation(
                                      Text(
                                        metadata.song!,
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    SlideAnimation(
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  ArtistProfile(
                                                name: metadata.artist!,
                                                controller: widget.controller,
                                              ),
                                            ),
                                          );
                                        },
                                        child: Text(
                                          metadata.artist!,
                                          style: TextStyle(
                                            color: Colors.white.withOpacity(.4),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              SlideAnimation(
                                StreamBuilder<PositionData>(
                                  stream: widget.controller.positionDataStream,
                                  builder: (context, snapshot) {
                                    final positionData = snapshot.data;
                                    return SeekBar(
                                      duration: positionData?.duration ??
                                          Duration.zero,
                                      position: positionData?.position ??
                                          Duration.zero,
                                      bufferedPosition:
                                          positionData?.bufferedPosition ??
                                              Duration.zero,
                                      onChangeEnd:
                                          widget.controller.player.seek,
                                    );
                                  },
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              SlideAnimation(
                                Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.white.withOpacity(.2),
                                    ),
                                  ),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          IconButton(
                                            icon: Icon(
                                              Icons.volume_up,
                                              color:
                                                  Colors.white.withOpacity(.6),
                                            ),
                                            onPressed: () {
                                              showSliderDialog(
                                                context: context,
                                                title: "Adjust volume",
                                                divisions: 10,
                                                min: 0.0,
                                                max: 1.0,
                                                value: widget
                                                    .controller.player.volume,
                                                stream: widget.controller.player
                                                    .volumeStream,
                                                onChanged: widget.controller
                                                    .player.setVolume,
                                              );
                                            },
                                          ),
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          IconButton(
                                            onPressed: () {
                                              if (widget.controller.player
                                                  .hasPrevious) {
                                                widget.controller.player
                                                    .seekToPrevious();
                                                widget.controller.player.play();
                                              }
                                            },
                                            icon: const Icon(
                                              CupertinoIcons.backward_end,
                                              color: Colors.white,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          PlayButton(
                                            player: widget.controller.player,
                                          ),
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          IconButton(
                                            onPressed: () {
                                              if (widget
                                                  .controller.player.hasNext) {
                                                widget.controller.player
                                                    .seekToNext();
                                                widget.controller.player.play();
                                              }
                                            },
                                            icon: const Icon(
                                              CupertinoIcons.forward_end,
                                              color: Colors.white,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          StreamBuilder<double>(
                                            stream: widget
                                                .controller.player.speedStream,
                                            builder: (context, snapshot) =>
                                                IconButton(
                                              icon: Text(
                                                "${snapshot.data?.toStringAsFixed(1)}x",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white
                                                      .withOpacity(.6),
                                                ),
                                              ),
                                              onPressed: () {
                                                showSliderDialog(
                                                  context: context,
                                                  title: "Adjust speed",
                                                  divisions: 10,
                                                  min: 0.5,
                                                  max: 1.5,
                                                  value: widget
                                                      .controller.player.speed,
                                                  stream: widget.controller
                                                      .player.speedStream,
                                                  onChanged: widget.controller
                                                      .player.setSpeed,
                                                );
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    StreamBuilder<bool>(
                                      stream: widget.controller.player
                                          .shuffleModeEnabledStream,
                                      builder: (context, snapshot) {
                                        final shuffleModeEnabled =
                                            snapshot.data ?? false;
                                        return IconButton(
                                          icon: shuffleModeEnabled
                                              ? const Icon(Icons.shuffle,
                                                  color: Colors.orange)
                                              : const Icon(Icons.shuffle,
                                                  color: Colors.grey),
                                          onPressed: () async {
                                            final enable = !shuffleModeEnabled;
                                            if (enable) {
                                              await widget.controller.player
                                                  .shuffle();
                                            }
                                            await widget.controller.player
                                                .setShuffleModeEnabled(enable);
                                          },
                                        );
                                      },
                                    ),
                                    StreamBuilder<LoopMode>(
                                      stream: widget
                                          .controller.player.loopModeStream,
                                      builder: (context, snapshot) {
                                        final loopMode =
                                            snapshot.data ?? LoopMode.off;
                                        const icons = [
                                          Icon(Icons.repeat,
                                              color: Colors.grey),
                                          Icon(Icons.repeat,
                                              color: Colors.orange),
                                          Icon(Icons.repeat_one,
                                              color: Colors.orange),
                                        ];
                                        const cycleModes = [
                                          LoopMode.off,
                                          LoopMode.all,
                                          LoopMode.one,
                                        ];
                                        final index =
                                            cycleModes.indexOf(loopMode);
                                        return IconButton(
                                          icon: icons[index],
                                          onPressed: () {
                                            widget.controller.player
                                                .setLoopMode(cycleModes[
                                                    (cycleModes.indexOf(
                                                                loopMode) +
                                                            1) %
                                                        cycleModes.length]);
                                          },
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 26.0),
                                child: Text(
                                  "In the Queue",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              SlideAnimation(
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5.0),
                                  child: StreamBuilder<SequenceState?>(
                                    stream: widget
                                        .controller.player.sequenceStateStream,
                                    builder: (context, snapshot) {
                                      final state = snapshot.data;
                                      final sequence = state?.sequence ?? [];
                                      return Theme(
                                        data: ThemeData(
                                          canvasColor: Colors.transparent,
                                          shadowColor: Colors.transparent,
                                        ),
                                        child: ReorderableListView(
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          shrinkWrap: true,
                                          onReorder:
                                              (int oldIndex, int newIndex) {
                                            if (oldIndex < newIndex) newIndex--;
                                            widget.controller.playlist
                                                .move(oldIndex, newIndex);
                                          },
                                          children: [
                                            for (var i = 0;
                                                i < sequence.length;
                                                i++)
                                              Padding(
                                                key: ValueKey(sequence[i]),
                                                padding:
                                                    const EdgeInsets.all(4.0),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    child: BlurryContainer(
                                                      bgColor: Colors.black,
                                                      blur: 10,
                                                      child: Dismissible(
                                                        key: ValueKey(
                                                            sequence[i]),
                                                        background: Container(
                                                          color:
                                                              Colors.redAccent,
                                                          alignment: Alignment
                                                              .centerRight,
                                                          child: const Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    right: 8.0),
                                                            child: Icon(
                                                                Icons.delete,
                                                                color: Colors
                                                                    .white),
                                                          ),
                                                        ),
                                                        onDismissed:
                                                            (dismissDirection) {
                                                          widget.controller
                                                              .playlist
                                                              .removeAt(i);
                                                        },
                                                        child: ListTile(
                                                          title: Text(
                                                            sequence[i].tag.song
                                                                as String,
                                                            maxLines: 2,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            style: TextStyle(
                                                              color: i ==
                                                                      state!
                                                                          .currentIndex
                                                                  ? Colors.green
                                                                  : Colors
                                                                      .white,
                                                            ),
                                                          ),
                                                          subtitle: Text(
                                                            sequence[i]
                                                                    .tag
                                                                    .artist
                                                                as String,
                                                            style: TextStyle(
                                                              color: Colors
                                                                  .white
                                                                  .withOpacity(
                                                                      .4),
                                                            ),
                                                          ),
                                                          trailing: const Icon(
                                                              Icons
                                                                  .dehaze_rounded,
                                                              color:
                                                                  Colors.white,
                                                              size: 20),
                                                          onTap: () {
                                                            widget.controller
                                                                .player
                                                                .seek(
                                                                    Duration
                                                                        .zero,
                                                                    index: i);
                                                            widget.controller
                                                                .player
                                                                .play();
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        BlurryContainer(
                          child: SafeArea(
                              child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 6),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  icon: const Icon(CupertinoIcons.back,
                                      color: Colors.white),
                                  onPressed: () => Navigator.pop(context),
                                ),
                                Text(
                                  "Now Playing",
                                  style: GoogleFonts.vidaloka(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                ValueListenableBuilder<Box>(
                                  valueListenable:
                                      Hive.box("Favorite").listenable(),
                                  builder: (context, box, child) {
                                    bool isfavorite =
                                        box.containsKey(metadata.song);
                                    if (isfavorite) {
                                      return IconButton(
                                        onPressed: () {
                                          final box = Hive.box("Favorite");
                                          box.delete(metadata.song);
                                        },
                                        icon: const Icon(
                                          CupertinoIcons.heart_fill,
                                          color: Colors.green,
                                        ),
                                      );
                                    } else {
                                      return IconButton(
                                        onPressed: () {
                                          final box = Hive.box("Favorite");
                                          box.put(
                                              metadata.song, metadata.toJson());
                                        },
                                        icon: Icon(
                                          CupertinoIcons.heart,
                                          color: Colors.white.withOpacity(.5),
                                        ),
                                      );
                                    }
                                  },
                                ),
                              ],
                            ),
                          )),
                          blur: 10,
                          bgColor: Colors.transparent,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
