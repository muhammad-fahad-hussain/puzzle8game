import 'package:flutter/material.dart';
import 'package:puzzle8game/constants/style.dart';
import 'package:puzzle8game/pages/game/widgets/gridWidget.dart';

class GamePage extends StatelessWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: gameBackgroundColor,
      child: const GridWidget(),
    );
  }
}
