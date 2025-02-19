import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerItem extends StatefulWidget {
  // final String videoUrl;
  // const VideoPlayerItem({
  //   Key? key,
  //   required this.videoUrl,
  // }) : super(key: key);

  @override
  State<VideoPlayerItem> createState() => _VideoPlayerItemState();
}

class _VideoPlayerItemState extends State<VideoPlayerItem> {
  late VideoPlayerController videoPlayerController;

  int index = 0;
  @override
  void initState() {
    super.initState();
    videoPlayerController = VideoPlayerController.asset(
        'images/cave.mp4') //   videoData[index].videoPath)
      ..initialize().then((value) {
        videoPlayerController.play();

        videoPlayerController.setVolume(1);
        videoPlayerController.setLooping(true); // Set looping to true
      });
  }

  @override
  void dispose() {
    super.dispose();
    videoPlayerController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      decoration: const BoxDecoration(color: Colors.black),
      child: VideoPlayer(
        videoPlayerController,
      ),
    );
  }
}
