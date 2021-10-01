import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:just_audio/just_audio.dart';
import 'package:musicbanner/alltoplaylist/add_to_playlist.dart';

import 'package:musicbanner/controller/home_controller.dart';
import 'package:musicbanner/models/song_model.dart';
import 'package:musicbanner/profile/singer_profile.dart';

import 'blur_container.dart';

class BoottomSheet extends StatelessWidget {
  final SongModel song;
  final NowPlayingController controller;
  const BoottomSheet({Key? key, required this.song, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.black12,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: CachedNetworkImageProvider(song.album!),
        ),
      ),
      child: BlurryContainer(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CachedNetworkImage(
                imageUrl: song.album!,
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                song.song!,
                textAlign: TextAlign.center,
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
              ),
              const SizedBox(
                height: 20,
              ),
              ListTile(
                onTap: () {
                  controller.playlist.insert(
                    controller.player.nextIndex!,
                    AudioSource.uri(
                      Uri.parse(song.url as String),
                      tag: song,
                    ),
                  );
                  Fluttertoast.showToast(
                    msg: "Added to next",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 16.0,
                  );
                  Navigator.pop(context);
                },
                leading: Icon(
                  CupertinoIcons.play_arrow,
                  color: Colors.white.withOpacity(.5),
                ),
                title: const Text(
                  "Play Next",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              ValueListenableBuilder<Box>(
                valueListenable: Hive.box("Favorite").listenable(),
                builder: (context, box, child) {
                  bool isfavorite = box.containsKey(song.song);
                  if (isfavorite) {
                    return ListTile(
                      onTap: () {
                        final box = Hive.box("Favorite");
                        box.delete(song.song);
                      },
                      leading: const Icon(
                        CupertinoIcons.heart_fill,
                        color: Colors.green,
                      ),
                      title: const Text(
                        "Your Favorite",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  } else {
                    return ListTile(
                      onTap: () {
                        final box = Hive.box("Favorite");
                        box.put(song.song, song.toJson());
                      },
                      leading: Icon(
                        CupertinoIcons.heart,
                        color: Colors.white.withOpacity(.5),
                      ),
                      title: const Text(
                        "Add To Favorite",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  }
                },
              ),
              const SizedBox(
                height: 3,
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => AddToPlaylist(
                        song: song,
                      ),
                    ),
                  );
                },
                leading: Icon(
                  Icons.playlist_add,
                  color: Colors.white.withOpacity(.5),
                ),
                title: const Text(
                  "Add To Playlist",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              ListTile(
                onTap: () {
                  controller.playlist.insert(
                    controller.player.nextIndex!,
                    AudioSource.uri(
                      Uri.parse(song.url as String),
                      tag: song,
                    ),
                  );
                  Fluttertoast.showToast(
                    msg: "Added to Queue",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 16.0,
                  );
                },
                leading: Icon(
                  CupertinoIcons.list_bullet,
                  color: Colors.white.withOpacity(.5),
                ),
                title: const Text(
                  "Add to queue",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.info,
                  color: Colors.white.withOpacity(.5),
                ),
                title: const Text(
                  "Credits",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white.withOpacity(.5),
                  size: 14,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        blur: 20,
        bgColor: Colors.black12,
      ),
    );
  }
}
