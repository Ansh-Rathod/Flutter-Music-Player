import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:musicbanner/controller/home_controller.dart';
import 'package:musicbanner/search/search_page.dart';

import 'blur_container.dart';
import 'favorite_bottomsheet.dart';

class SideBar extends StatelessWidget {
  final NowPlayingController controller;
  const SideBar({
    Key? key,
    required this.controller,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          fit: BoxFit.cover,
          image:
              AssetImage('assets/images/photo-1578873375969-d60aad647bb9.jfif'),
        ),
      ),
      height: size.height,
      width: size.width * 0.7,
      child: BlurryContainer(
        blur: 50,
        bgColor: Colors.grey[900]!.withOpacity(.3),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  BlurryContainer(
                    child: SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                          width: size.width * 0.7,
                          child: const Text(
                            "Happy Rock",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    blur: 100,
                    bgColor: Colors.transparent,
                  ),
                  const SizedBox(height: 20),
                  ListTile(
                    title: const Text(
                      "Home",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    leading: Icon(
                      CupertinoIcons.home,
                      color: Colors.white.withOpacity(.5),
                    ),
                  ),
                  const SizedBox(height: 8),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => SearchPage(
                            controller: controller,
                          ),
                        ),
                      );
                    },
                    title: const Text(
                      "Search",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    leading: Icon(
                      CupertinoIcons.search,
                      color: Colors.white.withOpacity(.5),
                    ),
                  ),
                  const SizedBox(height: 8),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => FavoriteBottomSheet(
                            controller: controller,
                          ),
                        ),
                      );
                    },
                    title: const Text(
                      "Favorite",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    leading: Icon(
                      CupertinoIcons.heart,
                      color: Colors.white.withOpacity(.5),
                    ),
                  ),
                  const SizedBox(height: 8),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => FavoriteBottomSheet(
                            controller: controller,
                          ),
                        ),
                      );
                    },
                    title: const Text(
                      "Playlists",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    leading: Icon(
                      Icons.library_music_outlined,
                      color: Colors.white.withOpacity(.5),
                    ),
                  ),
                  const SizedBox(height: 8),
                  ListTile(
                    title: const Text(
                      "Settings",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    leading: Icon(
                      CupertinoIcons.settings,
                      color: Colors.white.withOpacity(.5),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "verison: 1.0.0 beta",
                  style: TextStyle(
                    color: Colors.white.withOpacity(.5),
                    fontSize: 16,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
