import 'dart:async';

import 'package:audio_session/audio_session.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:hive/hive.dart';
import 'package:just_audio/just_audio.dart';

import 'package:flutter/services.dart';
import 'package:musicbanner/data/songs_data.dart';
import 'package:musicbanner/models/song_model.dart';
import 'package:musicbanner/widgets/seekbar.dart';
import 'package:rxdart/rxdart.dart';

class NowPlayingController with ChangeNotifier {
  final player = AudioPlayer();

  String errorMsg = '';
  bool isAllSongPlaylist = true;
  bool isSingerPlaylist = false;
  bool isAlbumPlaylist = false;
  bool isFavoritePlaylist = false;

  var playlist = ConcatenatingAudioSource(
    children: [
      for (var song in songs)
        AudioSource.uri(
          Uri.parse(song['Url'] as String),
          tag: SongModel.fromJson(song),
        ),
    ],
  );

  void changetoFavorite(int i) {
    final box = Hive.box('Favorite');
    playlist = ConcatenatingAudioSource(
      children: [
        for (int i = 0; i < box.length; i++)
          AudioSource.uri(
            Uri.parse(box.getAt(i)['Url']),
            tag: SongModel.fromJson(box.getAt(i)),
          ),
      ],
    );
    isFavoritePlaylist = true;
    isAllSongPlaylist = false;
    isAlbumPlaylist = false;
    isSingerPlaylist = false;
    notifyListeners();
    init(i: i);
  }

  void changetoSingerplaylist(List<SongModel> list, int i) {
    playlist = ConcatenatingAudioSource(children: [
      for (var song in list)
        AudioSource.uri(
          Uri.parse(song.url as String),
          tag: song,
        ),
    ]);

    isFavoritePlaylist = false;
    isAllSongPlaylist = false;
    isAlbumPlaylist = false;
    isSingerPlaylist = true;
    notifyListeners();
    init(i: i);
  }

  void changetoalbumplaylist(List<SongModel> list, int i) {
    playlist = ConcatenatingAudioSource(children: [
      for (var song in list)
        AudioSource.uri(
          Uri.parse(song.url as String),
          tag: song,
        ),
    ]);

    isFavoritePlaylist = false;
    isAllSongPlaylist = false;
    isSingerPlaylist = false;
    isAlbumPlaylist = true;
    notifyListeners();
    init(i: i);
  }

  void changetoAllsongPlaylist(int i) {
    playlist = ConcatenatingAudioSource(
      children: [
        for (var song in songs)
          AudioSource.uri(
            Uri.parse(song['Url'] as String),
            tag: SongModel.fromJson(song),
          ),
      ],
    );

    isFavoritePlaylist = false;
    isAllSongPlaylist = false;
    isSingerPlaylist = true;
    isAlbumPlaylist = false;

    notifyListeners();
    init(i: i);
  }

  void init({int? i}) async {
    final session = await AudioSession.instance;
    await session.configure(const AudioSessionConfiguration.speech());
    player.playbackEventStream.listen((event) {},
        onError: (Object e, StackTrace stackTrace) {
      errorMsg = 'A stream error occurred: ${e.toString()}';
      notifyListeners();
    });
    try {
      if (i != null) {
        await player.setAudioSource(playlist, initialIndex: i);

        notifyListeners();
      } else {
        await player.setAudioSource(playlist);

        notifyListeners();
      }
    } catch (e) {
      errorMsg = 'A stream error occurred: ${e.toString()}';
      notifyListeners();
    }
  }

  Stream<PositionData> get positionDataStream =>
      Rx.combineLatest3<Duration, Duration, Duration?, PositionData>(
        player.positionStream,
        player.bufferedPositionStream,
        player.durationStream,
        (position, bufferedPosition, duration) => PositionData(
          position,
          bufferedPosition,
          duration ?? Duration.zero,
        ),
      );

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }
}
