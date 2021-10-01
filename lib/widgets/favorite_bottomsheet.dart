import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
// import 'package:hive/hive.dart';
import 'package:intl/intl.dart';
import 'package:musicbanner/albumpage/album_page.dart';
import 'package:musicbanner/controller/home_controller.dart';
import 'package:musicbanner/models/song_model.dart';
import 'package:musicbanner/widgets/blur_container.dart';

class FavoriteBottomSheet extends StatelessWidget {
  final NowPlayingController controller;

  const FavoriteBottomSheet({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Colors.black12,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                  'assets/images/photo-1578873375969-d60aad647bb9.jfif'),
            ),
          ),
          child: BlurryContainer(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: const Icon(Icons.arrow_back,
                              color: Colors.white)),
                      const Text(
                        "Your Playlists",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox()
                    ],
                  ),
                ),
                ValueListenableBuilder<Box>(
                    valueListenable: Hive.box("AllPlaylist").listenable(),
                    builder: (context, box, child) {
                      return Container(
                        height: 270,
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: box.length,
                          itemBuilder: (context, i) {
                            final data = box.getAt(i);
                            // final song = SongModel.fromJson(data);
                            // if (i == 0) {
                            //   return const SizedBox(
                            //     width: 20,
                            //   );
                            // }
                            return Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                if (i == 0)
                                  const SizedBox(
                                    width: 20,
                                  ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => AlbumPage(
                                            controller: controller,
                                            name: data['name'],
                                          ),
                                        ),
                                      );
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(4),
                                      child: BlurryContainer(
                                        bgColor: Colors.black,
                                        blur: 100,
                                        child: Column(
                                          children: [
                                            CachedNetworkImage(
                                              imageUrl: data['image'],
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
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    data['name'],
                                                    maxLines: 1,
                                                    overflow: TextOverflow.clip,
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
                                                  Text(
                                                    getTimeFormated(
                                                        data['created']),
                                                    style: TextStyle(
                                                      color: Colors.white
                                                          .withOpacity(.4),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w600,
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
                                ),
                              ],
                            );
                          },
                        ),
                      );
                    }),
                const Center(
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      "Favorite Songs",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                ValueListenableBuilder<Box>(
                    valueListenable: Hive.box("Favorite").listenable(),
                    builder: (context, box, child) {
                      List<SongModel> playlist = [];
                      return ListView.builder(
                        shrinkWrap: true,
                        itemCount: box.length,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, i) {
                          final data = box.getAt(i);
                          final model = SongModel.fromJson(data);
                          playlist.add(model);
                          return InkWell(
                            onTap: () {
                              if (!controller.isFavoritePlaylist) {
                                controller.changetoFavorite(i);
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Flexible(
                                          child: Row(
                                            children: [
                                              CachedNetworkImage(
                                                imageUrl: data['Album'],
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
                                                          data['Song'],
                                                          maxLines: 1,
                                                          overflow:
                                                              TextOverflow.clip,
                                                          style:
                                                              const TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                        Text(
                                                          data['Artist'],
                                                          maxLines: 1,
                                                          overflow:
                                                              TextOverflow.clip,
                                                          style: TextStyle(
                                                            color: Colors.white
                                                                .withOpacity(
                                                                    .5),
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        InkWell(
                                            onTap: () {
                                              box.deleteAt(i);
                                            },
                                            child: Icon(Icons.close,
                                                color: Colors.white
                                                    .withOpacity(.5)))
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
                    })
              ],
            ),
            blur: 50,
            bgColor: Colors.black12,
          ),
        ),
      ),
    );
  }

  getTimeFormated(DateTime time) {
    List<String> months = [
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December'
    ];
    monthgenrater(String date) {
      switch (date) {
        case "01":
          return months[0];
        case "02":
          return months[1];
        case "03":
          return months[2];
        case "04":
          return months[3];
        case "05":
          return months[4];
        case "06":
          return months[5];
        case "07":
          return months[6];
        case "08":
          return months[7];
        case "09":
          return months[8];
        case "10":
          return months[9];
        case "11":
          return months[10];
        case "12":
          return months[11];
        default:
          return date + ",";
      }
    }

    var date = DateFormat("dd/MM/yyyy").format(time);
    return "${monthgenrater(date.split('/')[1])} ${date.split("/")[0]}, ${date.split("/")[2]}";
  }
}
