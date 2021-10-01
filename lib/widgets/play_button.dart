import 'package:audio_session/audio_session.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:just_audio/just_audio.dart';
import 'package:musicbanner/controller/home_controller.dart';
import 'package:provider/provider.dart';

class PlayButton extends StatelessWidget {
  final AudioPlayer player;
  const PlayButton({
    Key? key,
    required this.player,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<PlayerState>(
      stream: player.playerStateStream,
      builder: (context, snapshot) {
        final playerState = snapshot.data;
        final processingState = playerState?.processingState;
        final playing = playerState?.playing;
        if (processingState == ProcessingState.loading ||
            processingState == ProcessingState.buffering) {
          return const SizedBox(
            width: 30.0,
            height: 30.0,
            child: CircularProgressIndicator(
              color: Colors.white,
              strokeWidth: 1.5,
            ),
          );
        } else if (playing != true) {
          return IconButton(
            icon: const Icon(CupertinoIcons.play_arrow, color: Colors.white),
            onPressed: player.play,
          );
        } else if (processingState != ProcessingState.completed) {
          return IconButton(
            icon: const Icon(CupertinoIcons.pause, color: Colors.white),
            onPressed: player.pause,
          );
        } else {
          return IconButton(
            icon: const Icon(Icons.replay, color: Colors.white),
            onPressed: () => player.seek(Duration.zero),
          );
        }
      },
    );
  }
}
