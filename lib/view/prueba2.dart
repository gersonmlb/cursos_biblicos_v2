import 'package:lafedejesus/utilsAll/imports.dart';

class ChewieAudioDemo extends StatefulWidget {
  final String linkAudio;
  ChewieAudioDemo({this.linkAudio}) : super();

  @override
  State<StatefulWidget> createState() {
    return _ChewieDemoState();
  }
}

class _ChewieDemoState extends State<ChewieAudioDemo> {
  VideoPlayerController _videoPlayerController1;
  ChewieAudioController _chewieAudioController;

  @override
  void initState() {
    super.initState();
    _videoPlayerController1 = VideoPlayerController.network(
        "${widget.linkAudio}");
    _chewieAudioController = ChewieAudioController(
      videoPlayerController: _videoPlayerController1,
      autoPlay: true,
      looping: false,
    );
  }

  @override
  void dispose() {
    _videoPlayerController1.dispose();
    _chewieAudioController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ChewieAudio(
          controller: _chewieAudioController,
        ),
      );
  }
}