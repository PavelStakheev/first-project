import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';


class MyVideo extends StatefulWidget {
  bool playPauseVideoAction;
  final String videoUrl;
   MyVideo({super.key,
  required this.videoUrl,
  required this.playPauseVideoAction});

  @override
  State<MyVideo> createState() => _MyVideoState();
}

class _MyVideoState extends State<MyVideo>  {
  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;
  bool _isVideoPlaying = false;




  @override
  void initState(){
     super.initState();
    _videoPlayerController = VideoPlayerController.asset(widget.videoUrl);
    _videoPlayerController.play();
    
    _videoPlayerController.initialize().then((_){
      setState(() {});
      _videoPlayerController.setLooping(true);
        _chewieController = ChewieController(
        videoPlayerController: _videoPlayerController,
        aspectRatio: 16/9,
        looping: false,
        showControls: false,
        allowFullScreen: false,
        allowPlaybackSpeedChanging: false);

      });
     
  }

@override
  void didUpdateWidget(MyVideo oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.playPauseVideoAction != oldWidget.playPauseVideoAction) {
      if (widget.playPauseVideoAction) {
        _videoPlayerController.play();
      } else {
        _videoPlayerController.pause();
      }
    }
  }

  @override
   void dispose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }


void _toggleVideoPlayback() {
    // additionally to onTap play / pause, video can be played / paused by parameter 'playPauseVideoAction'
    if (widget.playPauseVideoAction || _isVideoPlaying) {
      _videoPlayerController.play();
    } else {
      _videoPlayerController.pause();
    }
    setState(() {
      _isVideoPlaying = !_isVideoPlaying;

      // update parameter to reflect video play state
      widget.playPauseVideoAction = _isVideoPlaying;

      // remember that if you want to use eg. app state to play/pause video, you should update it here:
      // FFAppState().yourAppState = widget.playPauseVideoAction;
    });
  }


  @override
  Widget build(BuildContext context) {
      return SizedBox(
      width: 250,
      height: 200,
      child: _videoPlayerController.value.isInitialized
          ? Stack(
              children: [
                Chewie(
                  controller: _chewieController,
                ),
                GestureDetector(
                  onTap: _toggleVideoPlayback, // play / pause video on tap
                  behavior: HitTestBehavior.opaque,
                ),
              ],
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}