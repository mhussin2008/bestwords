import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'data.dart';

// https://www.youtube.com/@faykooo1/playlists

class mainScreen extends StatefulWidget {
  final update;
  // final

  mainScreen(this.update): super(key: data.gk);

  @override
  State<mainScreen> createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
  @override
  Widget build(BuildContext context) {

    return   Center(
      child: Column(
        children: [
          ElevatedButton(onPressed: () async {
            AssetsAudioPlayer.newPlayer().open(
              Audio('assets/mp3_original/1-split/1_silence_01.mp3'),
              autoStart: true,
              showNotification: true,
            );



            //widget.player.audioSource=AudioSource.asset('assets/mp3_original/1-split/1_silence_01.mp3');
             }

             ,child: Text('تشغيل'),),

          Image(image: AssetImage('assets/images/${data.pageNumber}.png')
          ,width:MediaQuery.of(context).size.width ,
            height:MediaQuery.of(context).size.height-200 ,
          )]
    ),
      );

  }
}
