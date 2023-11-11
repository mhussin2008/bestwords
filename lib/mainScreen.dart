import 'package:flutter/material.dart';
import 'data.dart';

// https://www.youtube.com/@faykooo1/playlists

class mainScreen extends StatefulWidget {
  final update;

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
          ElevatedButton(onPressed: (){widget.update();}, child: Text('update parent')),

          Image(image: AssetImage('assets/images/${data.pageNumber}.png')
          ,width:MediaQuery.of(context).size.width ,
            height:MediaQuery.of(context).size.height-200 ,
          )]
    ),
      );

  }
}
