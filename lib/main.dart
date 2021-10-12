import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/intl.dart';
import 'package:musicbanner/widgets/favorite_bottomsheet.dart';
import 'package:musicbanner/widgets/new_songs_page_carousol.dart';
import 'package:musicbanner/widgets/sidebar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';

import 'package:musicbanner/controller/home_controller.dart';
import 'package:musicbanner/data/songs_data.dart';
import 'package:musicbanner/models/song_model.dart';
import 'package:musicbanner/search/search_page.dart';
import 'package:musicbanner/widgets/blur_container.dart';
import 'package:musicbanner/widgets/horizontal_list.dart';
import 'package:musicbanner/widgets/list_widget.dart';
import 'package:musicbanner/widgets/song_banner.dart';
import 'package:musicbanner/widgets/song_view.dart';

import 'onboarding/on_boarding_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var dir = await getApplicationDocumentsDirectory();
  await Hive.initFlutter(dir.path);
  await Hive.openBox('Name');
  await Hive.openBox('Favorite');
  await Hive.openBox('AllPlaylist');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final box = Hive.box('Name');
    final name = box.get(1);
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: name != null
          ? ChangeNotifierProvider(
              create: (context) => NowPlayingController()..init(),
              child: HomePage(name: name),
            )
          : const OnBoarding(),
    );
  }
}

class HomePage extends StatefulWidget {
  final String name;
  const HomePage({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isShow = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final List<SongModel> allsongs =
        songs.map((e) => SongModel.fromJson(e)).toList();

    return Consumer<NowPlayingController>(
      builder: (context, controller, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: Scaffold(
            backgroundColor: Colors.grey[900],
            body: Stack(
              children: [
                AnimatedPositioned(
                  top: 0,
                  left: isShow ? size.width * 0.7 : 0,
                  width: size.width,
                  height: size.height,
                  duration: const Duration(microseconds: 500),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        right: 0,
                        left: 0,
                        height: size.height,
                        child: Container(
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
                            bgColor: Colors.grey[900]!.withOpacity(.2),
                            blur: 50,
                            child: SafeArea(
                              child: SingleChildScrollView(
                                physics: const BouncingScrollPhysics(),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 100),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 26.0),
                                      child: Row(
                                        children: [
                                          const Text("Hello ",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 20,
                                              )),
                                          Text(
                                            widget.name,
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 22,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 6,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 26.0),
                                      child: Text("Find the best songs of 2021",
                                          style: TextStyle(
                                            color: Colors.white.withOpacity(.6),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 18,
                                          )),
                                    ),
                                    const SizedBox(
                                      height: 24,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 22.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.of(context).push(
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    SearchPage(
                                                  controller: controller,
                                                ),
                                              ),
                                            );
                                          },
                                          child: BlurryContainer(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(16.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          horizontal: 5.0),
                                                      child: Text(
                                                        "Looking for...",
                                                        style: TextStyle(
                                                          color: Colors.white
                                                              .withOpacity(.6),
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 18,
                                                        ),
                                                      ),
                                                    ),
                                                    const Icon(
                                                        CupertinoIcons.search,
                                                        color: Colors.white)
                                                  ],
                                                ),
                                              ),
                                              blur: 20,
                                              bgColor: Colors.black12),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 24,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 26.0),
                                      child: Text("Latest release ",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          )),
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    HorizontalListWidget(
                                      allsongs: allsongs,
                                      controller: controller,
                                    ),
                                    const SizedBox(
                                      height: 24,
                                    ),
                                    NewSongPageview(
                                      controller: controller,
                                      allSongs: allsongs,
                                    ),
                                    const SizedBox(
                                      height: 24,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 26.0),
                                      child: Text("Mode for You ",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          )),
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    ListWidget(
                                      allsongs: allsongs,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        left: 0,
                        height: 100,
                        child: BlurryContainer(
                          child: SafeArea(
                              child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      isShow = !isShow;
                                    });
                                  },
                                  child: const Icon(
                                    Icons.menu_sharp,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "HAPPY ROCK",
                                  style: GoogleFonts.vidaloka(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            FavoriteBottomSheet(
                                          controller: controller,
                                        ),
                                      ),
                                    );
                                  },
                                  child: const Icon(
                                    Icons.favorite,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          )),
                          blur: 10,
                          bgColor: Colors.transparent,
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
                                    controller: controller,
                                  ),
                                ),
                              );
                            },
                            child: SongBanner(
                              player: controller.player,
                              controller: controller,
                            )),
                      ),
                    ],
                  ),
                ),
                
                AnimatedPositioned(
                  top: 0,
                  duration: const Duration(microseconds: 500),
                  left: isShow ? 0 : size.width,
                  height: size.height,
                  width: size.width * 0.7,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isShow = !isShow;
                      });
                    },
                    child: SideBar(size: size, controller: controller),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
