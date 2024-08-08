// ignore_for_file: prefer_final_fields, prefer_const_constructors, prefer_interpolation_to_compose_strings, prefer_const_constructors_in_immutables, library_private_types_in_public_api, no_leading_underscores_for_local_identifiers, curly_braces_in_flow_control_structures, file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:spring_button/spring_button.dart';
import 'package:image_sequence_animator/image_sequence_animator.dart';

class AnimationPage extends StatefulWidget {
  AnimationPage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _AnimationPageState createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  ImageSequenceAnimatorState? get imageSequenceAnimator =>
      isOnline ? onlineImageSequenceAnimator : offlineImageSequenceAnimator;
  ImageSequenceAnimatorState? offlineImageSequenceAnimator;
  ImageSequenceAnimatorState? onlineImageSequenceAnimator;

  bool isOnline = false;
  bool wasPlaying = false;

  Color color1 = Colors.greenAccent;
  Color color2 = Colors.indigo;

  String onlineOfflineText = "Use Online";
  String loopText = "Start Loop";
  String boomerangText = "Start Boomerang";

  bool _useFullPaths = false;
  List<String>? _fullPathsOffline;
  List<String>? _fullPathsOnline;

  void onOfflineReadyToPlay(ImageSequenceAnimatorState _imageSequenceAnimator) {
    offlineImageSequenceAnimator = _imageSequenceAnimator;
  }

  void onOfflinePlaying(ImageSequenceAnimatorState _imageSequenceAnimator) {
    setState(() {});
  }

  void onOnlineReadyToPlay(ImageSequenceAnimatorState _imageSequenceAnimator) {
    onlineImageSequenceAnimator = _imageSequenceAnimator;
  }

  void onOnlinePlaying(ImageSequenceAnimatorState _imageSequenceAnimator) {
    setState(() {});
  }

  Widget row(String text, Color color) {
    return Padding(
      padding: EdgeInsets.all(3.125),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 12.5,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (_fullPathsOffline == null && _fullPathsOnline == null) {
      _fullPathsOffline = [];
      _fullPathsOnline = [];
      for (int i = 0; i < 60; i++) {
        String _value = i.toString();
        while (_value.length < 5) _value = "0" + _value;
        _fullPathsOffline!.add("assets/easypay" + _value + ".png");
        _fullPathsOnline!.add(
            "https://www.cosmossoftware.coffee/AppData/ImageSequenceAnimator/ImageSequence/Frame_" +
                _value +
                ".png");
      }
    }
    return Scaffold(
      // appBar: AppBar(title: Text(widget.title!)),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Padding(
              padding: EdgeInsets.all(25),
              child: isOnline
                  ? ImageSequenceAnimator(
                      "https://www.cosmossoftware.coffee/AppData/ImageSequenceAnimator/ImageSequence",
                      "assets",
                      0,
                      5,
                      "png",
                      60,
                      key: Key("online"),
                      fullPaths: _useFullPaths ? _fullPathsOffline : null,
                      isAutoPlay: true,
                      isOnline: true,

                      color: color1,
                      onReadyToPlay: onOnlineReadyToPlay,
                      onPlaying: onOnlinePlaying,
                    )
                  : ImageSequenceAnimator(
                      "assets/easypay",
                      "assets",
                      0,
                      5,
                      "png",
                      60,
                      key: Key("offline"),
                      fullPaths: _useFullPaths ? _fullPathsOffline : null,
                      color: color1,
                      onReadyToPlay: onOfflineReadyToPlay,
                      onPlaying: onOfflinePlaying,
                    ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 4,
                  child: CupertinoSlider(
                    value: imageSequenceAnimator == null
                        ? 0.0
                        : imageSequenceAnimator!.currentProgress,
                    min: 0.0,
                    max: imageSequenceAnimator == null
                        ? 100.0
                        : imageSequenceAnimator!.totalProgress,
                    onChangeStart: (double value) {
                      wasPlaying = imageSequenceAnimator!.isPlaying;
                      imageSequenceAnimator!.pause();
                    },
                    onChanged: (double value) {
                      imageSequenceAnimator!.skip(value);
                    },
                    onChangeEnd: (double value) {
                      if (wasPlaying) imageSequenceAnimator!.play();
                    },
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      imageSequenceAnimator == null
                          ? "0.0"
                          : ((imageSequenceAnimator!.currentTime.floor())
                                  .toString() +
                              "/" +
                              (imageSequenceAnimator!.totalTime.floor())
                                  .toString()),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: SpringButton(
                    SpringButtonType.OnlyScale,
                    row(
                      loopText,
                      Colors.cyan,
                    ),
                    useCache: false,
                    onTap: () {
                      setState(() {
                        loopText = imageSequenceAnimator!.isLooping
                            ? "Start Loop"
                            : "Stop Loop";
                        boomerangText = "Start Boomerang";
                        imageSequenceAnimator!
                            .setIsLooping(!imageSequenceAnimator!.isLooping);
                      });
                    },
                  ),
                ),
                Expanded(
                  child: SpringButton(
                    SpringButtonType.OnlyScale,
                    row(
                      boomerangText,
                      Colors.deepPurpleAccent,
                    ),
                    useCache: false,
                    onTap: () {
                      setState(() {
                        loopText = "Start Loop";
                        boomerangText = imageSequenceAnimator!.isBoomerang
                            ? "Start Boomerang"
                            : "Stop Boomerang";
                        imageSequenceAnimator!.setIsBoomerang(
                            !imageSequenceAnimator!.isBoomerang);
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: SpringButton(
                    SpringButtonType.OnlyScale,
                    row(
                      onlineOfflineText,
                      Colors.orangeAccent,
                    ),
                    useCache: false,
                    onTap: () {
                      setState(() {
                        imageSequenceAnimator!.stop();
                        isOnline = !isOnline;
                        loopText = imageSequenceAnimator == null ||
                                imageSequenceAnimator!.isLooping
                            ? "Start Loop"
                            : "Stop Loop";
                        boomerangText = imageSequenceAnimator == null ||
                                imageSequenceAnimator!.isBoomerang
                            ? "Start Boomerang"
                            : "Stop Boomerang";
                        onlineOfflineText =
                            isOnline ? "Use Offline" : "Use Onfline";
                      });
                    },
                  ),
                ),
                Expanded(
                  child: SpringButton(
                    SpringButtonType.OnlyScale,
                    row(
                      "Change Colour",
                      Colors.redAccent,
                    ),
                    onTap: () {
                      imageSequenceAnimator!.changeColor(
                          imageSequenceAnimator!.color == color1
                              ? color2
                              : color1);
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: SpringButton(
                    SpringButtonType.OnlyScale,
                    row(
                      "Play/Pause",
                      Colors.deepOrangeAccent,
                    ),
                    onTap: () {
                      setState(() {
                        imageSequenceAnimator!.isPlaying
                            ? imageSequenceAnimator!.pause()
                            : imageSequenceAnimator!.play();
                      });
                    },
                  ),
                ),
                Expanded(
                  child: SpringButton(
                    SpringButtonType.OnlyScale,
                    row(
                      "Stop",
                      Colors.green,
                    ),
                    onTap: () {
                      imageSequenceAnimator!.stop();
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: SpringButton(
                    SpringButtonType.OnlyScale,
                    row(
                      "Restart",
                      Colors.teal,
                    ),
                    onTap: () {
                      imageSequenceAnimator!.restart();
                    },
                  ),
                ),
                Expanded(
                  child: SpringButton(
                    SpringButtonType.OnlyScale,
                    row(
                      "Rewind",
                      Colors.indigoAccent,
                    ),
                    onTap: () {
                      imageSequenceAnimator!.rewind();
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
