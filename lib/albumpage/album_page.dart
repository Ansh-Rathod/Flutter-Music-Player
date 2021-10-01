import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:musicbanner/controller/home_controller.dart';
import 'package:musicbanner/models/song_model.dart';
import 'package:musicbanner/widgets/blur_container.dart';
import 'package:musicbanner/widgets/song_banner.dart';
import 'package:musicbanner/widgets/song_view.dart';

class AlbumPage extends StatefulWidget {
  final NowPlayingController controller;
  final String name;
  const AlbumPage({
    Key? key,
    required this.controller,
    required this.name,
  }) : super(key: key);

  @override
  _AlbumPageState createState() => _AlbumPageState();
}

class _AlbumPageState extends State<AlbumPage> {
  List<SongModel> allResults = [];
  @override
  void initState() {
    getallResults();
    super.initState();
  }

  getallResults() async {
    await Hive.openBox(widget.name);
    final box = Hive.box(widget.name);
    for (var i = 0; i < box.length; i++) {
      final data = box.getAt(i);
      setState(() {
        allResults.add(SongModel.fromJson(data));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: Scaffold(
        body: Container(
          width: size.width,
          height: size.height,
          decoration: const BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                "https://source.unsplash.com/1600x900/?singer",
              ),
            ),
          ),
          child: BlurryContainer(
            bgColor: Colors.black.withOpacity(.8),
            blur: 40,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  height: size.height,
                  child: CustomScrollView(
                    physics: const BouncingScrollPhysics(),
                    slivers: [
                      SliverAppBar(
                        backgroundColor: Colors.black.withOpacity(.8),
                        expandedHeight: 300,
                        pinned: true,
                        stretch: true,
                        flexibleSpace: FlexibleSpaceBar(
                            stretchModes: const [
                              StretchMode.fadeTitle,
                              StretchMode.zoomBackground
                            ],
                            title: Text(
                              widget.name,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            centerTitle: true,
                            collapseMode: CollapseMode.pin,
                            background: Container(
                              width: size.width,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                    "https://source.unsplash.com/1600x900/?singer",
                                  ),
                                ),
                              ),
                              height: 300,
                              child: Center(
                                child: BackdropFilter(
                                  filter:
                                      ImageFilter.blur(sigmaX: 10, sigmaY: 5),
                                  child: Container(
                                    height: 150,
                                    width: 150,
                                    decoration: const BoxDecoration(
                                      color: Colors.black38,
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                          "https://source.unsplash.com/1600x900/?singer",
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )),
                      ),
                      const SliverToBoxAdapter(
                        child: SizedBox(height: 20),
                      ),
                      const SliverToBoxAdapter(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 26.0, vertical: 26),
                          child: Text(
                            "Songs ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (context, i) {
                            final song = allResults[i];
                            return InkWell(
                              onTap: () {
                                if (!widget.controller.isAlbumPlaylist) {
                                  widget.controller
                                      .changetoalbumplaylist(allResults, i);
                                  widget.controller.player.play();
                                }
                                widget.controller.player
                                    .seek(Duration.zero, index: i);
                                widget.controller.player.play();
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
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
                                                      padding:
                                                          const EdgeInsets.all(
                                                              12.0),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            song.song!,
                                                            maxLines: 1,
                                                            overflow:
                                                                TextOverflow
                                                                    .clip,
                                                            style:
                                                                const TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                            height: 5,
                                                          ),
                                                          Text(
                                                            song.artist!,
                                                            style: TextStyle(
                                                              color: Colors
                                                                  .white
                                                                  .withOpacity(
                                                                      .4),
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
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
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Icon(
                                              Icons.more_horiz_outlined,
                                              color:
                                                  Colors.white.withOpacity(.8),
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
                          childCount:
                              allResults.length > 5 ? 5 : allResults.length,
                        ),
                      ),
                      const SliverToBoxAdapter(
                        child: SizedBox(height: 120),
                      ),
                    ],
                  ),
                ),
                AnimatedPositioned(
                  duration: const Duration(microseconds: 500),
                  bottom: 0,
                  left: 0,
                  right: 0,
                  height: 95,
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SongView(
                              controller: widget.controller,
                            ),
                          ),
                        );
                      },
                      child: SongBanner(
                        player: widget.controller.player,
                        controller: widget.controller,
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
