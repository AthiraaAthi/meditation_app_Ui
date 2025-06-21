import 'package:flutter/material.dart';
import 'package:meditation_app_ui/utils/color_constant/color_constant.dart';

class AudioTile extends StatelessWidget {
  final String title;
  final String duration;
  final bool isPlaying;

  const AudioTile({
    required this.title,
    required this.duration,
    this.isPlaying = false,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: isPlaying ? defBlue : Colors.grey.shade300,
        child: Icon(
          isPlaying ? Icons.play_arrow : Icons.play_arrow_outlined,
          color: isPlaying ? Colors.white : Colors.black,
        ),
      ),
      title: Text(title),
      trailing: Text(duration),
    );
  }
}

class AudioList extends StatelessWidget {
  const AudioList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: NeverScrollableScrollPhysics(),
    );
  }
}
