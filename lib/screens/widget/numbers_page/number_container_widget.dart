import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../../../models/number_page/number.dart';

// ignore: must_be_immutable
class NumberContainerWidget extends StatelessWidget {
  NumberContainerWidget(
      {Key? key,
      required this.number,
      required this.color,
      required this.prefix})
      : super(key: key);
  final Item number;
  final String prefix;
  late AudioCache player;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: const Color(0xffFEF6DB),
            margin: const EdgeInsets.only(right: 10),
            child: Image.asset(
              number.image,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                number.jpName,
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
              Text(
                number.enName,
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
            ],
          ),
          const Spacer(),
          Center(
            child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: IconButton(
                    autofocus: true,
                    iconSize: 45,
                    onPressed: () {
                      player = AudioCache(prefix: prefix);
                      player.play(number.sound);
                    },
                    icon: const Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 28,
                    ))),
          )
        ],
      ),
    );
  }
}
