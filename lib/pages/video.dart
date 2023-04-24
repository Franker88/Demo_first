import "package:bottomnav_bar/main.dart";
import "package:flutter/material.dart";

class Video extends StatelessWidget {
  const Video({super.key});

  @override
  Widget build(BuildContext context){
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Icon(Icons.video_label_sharp),
          const Text("Video Page"),
          ElevatedButton(
            onPressed: () {
              scaKey.currentState?.onTapped(0);
            },
            child: const Text("Go Home"), 
          ),
        ],
      )
    );
 }
}