import 'package:flutter/material.dart';
import 'package:flutter_media_player_sample/media_player.dart';
import 'package:flutter_media_player_sample/camera_view.dart';
import 'package:flutter_media_player_sample/home_view.dart';

import 'dart:async';

import 'package:camera/camera.dart';

Future<Null> main() async {
  // Fetch the available cameras before initializing the app.
  try {
    cameras = await availableCameras();
  } on CameraException catch (e) {
    logError(e.code, e.description);
  }
  runApp(new MaterialApp(
      title: 'Relative Poker',
      routes: <String, WidgetBuilder>{
        '/'       : (_) => new HomeView(),
        '/player' : (_) => new MediaPlayerView(),
        '/camera' : (_) => new CameraApp(),
      }
  ));
}