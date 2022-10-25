import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class contentsVideo extends StatefulWidget {
  @override
  State<contentsVideo> createState() => _contentsVideoState();
}

class _contentsVideoState extends State<contentsVideo> {
  late VideoPlayerController _videoPlayerController;
  bool startedPlaying = false;

  @override
  void initState() {
    super.initState();
    _videoPlayerController =
        VideoPlayerController.asset('assets/companyIntroduction.mp4');
    _videoPlayerController.addListener(() {
      if (startedPlaying && !_videoPlayerController.value.isPlaying) {
        Navigator.pop(context);
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _videoPlayerController.dispose();
  }

  Future<bool> started() async {
    await _videoPlayerController.initialize();
    await _videoPlayerController.play();
    startedPlaying = true;
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('images/me.jpg'),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 4.0),
                    child: Container(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('AudioTest'),
                        SizedBox(
                          height: 20,
                        ),
                        FutureBuilder<bool>(
                          future: started(),
                          builder: (BuildContext context,
                              AsyncSnapshot<bool> snapshot) {
                            if (snapshot.data ?? false) {
                              return AspectRatio(
                                aspectRatio:
                                    _videoPlayerController.value.aspectRatio,
                                child: VideoPlayer(_videoPlayerController),
                              );
                            } else {
                              return const Text('waiting for video to load');
                            }
                          },
                        ),
                      ],
                    )),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          width: 300,
          height: 0.2,
          color: Color(0xFF757575),
        ),
      ],
    );
  }
}
