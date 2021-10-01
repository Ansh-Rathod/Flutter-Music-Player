import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:musicbanner/controller/home_controller.dart';
import 'package:musicbanner/main.dart';
import 'package:musicbanner/widgets/blur_container.dart';
import 'package:provider/provider.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  String query = '';

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
              image: AssetImage(
                  'assets/images/photo-1578873375969-d60aad647bb9.jfif'),
            ),
          ),
          child: BlurryContainer(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Welcome to\nHappy Rock",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Thousands of music and audio tracks, free for commercial and non-commercial use.",
                    style: TextStyle(
                      color: Colors.white.withOpacity(.7),
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 20),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: BlurryContainer(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: TextField(
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            hintStyle:
                                TextStyle(color: Colors.white.withOpacity(.5)),
                            hintText: "Your Name.",
                            border: const UnderlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                          onChanged: (v) {
                            setState(() {
                              query = v;
                            });
                          },
                        ),
                      ),
                      blur: 20,
                      bgColor: Colors.black12,
                    ),
                  ),
                  const SizedBox(height: 20),
                  ButtonTheme(
                    minWidth: double.infinity,
                    child: ElevatedButton(
                      onPressed: query.isNotEmpty
                          ? () {
                              final box = Hive.box('Name');
                              box.put(1, query);
                              FocusScope.of(context).unfocus();

                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ChangeNotifierProvider(
                                    create: (context) =>
                                        NowPlayingController()..init(),
                                    child: HomePage(name: query),
                                  ),
                                ),
                              );
                            }
                          : null,
                      child: const Text("Get Statred"),
                    ),
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            ),
            blur: 10,
            bgColor: Colors.black12,
          ),
        ),
      ),
    );
  }
}
