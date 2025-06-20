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
    return ListTile();
  }
}
