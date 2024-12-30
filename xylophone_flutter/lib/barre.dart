import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';


class ColoredBar extends StatelessWidget {
  final Color color;
  final int noteNumber;
  const ColoredBar({super.key, required this.color, required this.noteNumber});
  @override
  Widget build(BuildContext context) {
    final player = AudioPlayer();
    return Expanded(
      child: GestureDetector(
        onTap: () async {
          try {
            await player.setAsset('assets/note$noteNumber.wav');
            await player.play();
            print('Played');
          } catch (e) {
            print("Error playing sound: $e");
          } finally {
            await player.dispose();
          }
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }
}
