import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:musicbanner/controller/home_controller.dart';
import 'package:musicbanner/data/songs_data.dart';
import 'package:musicbanner/models/song_model.dart';
import 'package:musicbanner/profile/singer_profile.dart';
import 'package:musicbanner/widgets/blur_container.dart';
import 'package:musicbanner/widgets/bottom_sheet.dart';
import 'package:musicbanner/widgets/song_banner.dart';
import 'package:musicbanner/widgets/song_view.dart';

class SearchPage extends StatefulWidget {
  final NowPlayingController controller;

  const SearchPage({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String terms = '';
  final List<SongModel> allsongs =
      songs.map((e) => SongModel.fromJson(e)).toList();
  List<SongModel> results = [];

  void _onTextChanged() {
    setState(() {
      results = allsongs.where((element) {
        return element.song!.toLowerCase().contains(terms.toLowerCase());
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: size.width,
          height: size.height,
          decoration: const BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                  'assets/images/photo-1578873375969-d60aad647bb9.jfif'),
            ),
          ),
          child: BlurryContainer(
            child: Stack(
              children: [
                Positioned(
                  top: 120,
                  right: 0,
                  left: 0,
                  height: size.height,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: results.length,
                    itemBuilder: (context, i) {
                      final song = results[i];
                      return InkWell(
                        onTap: () {
                          if (!widget.controller.isAllSongPlaylist) {
                            widget.controller.changetoAllsongPlaylist(i);
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
                                                    const EdgeInsets.all(12.0),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      song.song!,
                                                      maxLines: 1,
                                                      overflow:
                                                          TextOverflow.clip,
                                                      style: const TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold,
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
                                                              name:
                                                                  song.artist!,
                                                              controller: widget
                                                                  .controller,
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
                                                          fontWeight:
                                                              FontWeight.w600,
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
                                              controller: widget.controller,
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
                  ),
                ),
                // ignore: prefer_const_constructors
                Positioned(
                  top: 0,
                  right: 0,
                  left: 0,
                  height: 130,
                  child: SafeArea(
                    child: Container(
                      padding: const EdgeInsets.all(20.0),
                      child: Center(
                        child: CupertinoTextField(
                          autofocus: true,
                          onChanged: (va) {
                            setState(() {
                              terms = va;
                            });
                            _onTextChanged();
                          },
                          placeholder: "Artist, songs..",
                          placeholderStyle: const TextStyle(
                            color: Colors.white38,
                          ),
                          style: const TextStyle(color: Colors.white),
                          suffix: const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 16.0,
                            ),
                            child: Icon(
                              CupertinoIcons.search,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                          padding: const EdgeInsets.all(16),
                          decoration: const BoxDecoration(
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ),
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
            blur: 50,
            bgColor: Colors.black,
          ),
        ),
      ),
    );
  }
}
