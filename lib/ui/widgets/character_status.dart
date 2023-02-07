import 'package:flutter/material.dart';

enum LiveState { alive, dead, unknown }

class CharacterStatus extends StatelessWidget {
  final LiveState liveState;
  const CharacterStatus({
    super.key,
    required this.liveState,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          Icons.circle,
          size: 11.0,
          color: liveState == LiveState.alive
            ? Colors.lightGreenAccent[400]
            : liveState == LiveState.dead
              ? Colors.red
              : Colors.white,
        ),
        const SizedBox(
          width: 6.0,
        ),
        Text(
          liveState == LiveState.dead
            ? 'Dead'
            : liveState == LiveState.alive
              ? 'Alive'
              : 'Unknown',
          style: const TextStyle(
            fontFamily: 'avenir',
            fontSize: 8.0,
          ),
        ),
      ],
    );
  }
}