import 'package:flutter/material.dart';

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
        backgroundColor: isPlaying ? Colors.purple : Colors.grey.shade300,
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
    return const Placeholder();
  }
}
