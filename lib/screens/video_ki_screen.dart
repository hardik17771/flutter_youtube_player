import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:dart_vlc/dart_vlc.dart';

import 'package:youtube_player_flutter_ifraim/youtube_player.dart';

class VideoScreen extends StatefulWidget {

  final String id;

  VideoScreen({required this.id});

  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  // DartVLC.initialize();

  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
        youtubeUrl: 'https://www.youtube.com/watch?v=BddP6PYo2gs'
      // initialVideoId: widget.id,
      // flags: YoutubePlayerFlags(
      //   mute: false,
      //   autoPlay: true,
      );

  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: YoutubePlayer(
        controller: _controller,
        // showVideoProgressIndicator: true,
        // onReady: () {
        //   if (kDebugMode) {
        //     print('Player is ready.');
        //   }
        // },
      ),
    );
  }
}