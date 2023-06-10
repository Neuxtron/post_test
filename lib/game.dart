import 'package:flutter/material.dart';

class Game extends StatelessWidget {
  final String preview;
  final String logo;
  const Game({super.key, required this.preview, required this.logo});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          preview,
          height: 105,
          width: 220,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 12),
          child: Image.asset(
            logo,
            width: 50,
          ),
        ),
      ],
    );
  }
}
