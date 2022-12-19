import 'package:flutter/material.dart';
import 'package:toku/models/number_page/number.dart';
import 'package:toku/screens/widget/numbers_page/number_container_widget.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({Key? key}) : super(key: key);

  final Map<String, String> wordsMap = const {
    'One': 'Ichi',
    'Two': 'Ni',
    'Three': 'San',
    'Four': 'Shi',
    'Five': 'Go',
    'Six': 'Roku',
    'Seven': 'Sebun',
    'Eight': 'Hachi',
    'Nine': 'kyū',
    'Ten': 'Jū'
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Numbers"),
          backgroundColor: const Color(0xff463228),
        ),
        body: ListView.separated(
            itemCount: wordsMap.length,
            separatorBuilder: (context, index) => const Divider(height: 2),
            itemBuilder: ((context, index) {
              return NumberContainerWidget(
                color: const Color(0xffEF9235),
                prefix: 'assets/sounds/numbers/',
                number: Item(
                    image: "assets/images/numbers/${index + 1}.png",
                    enName: wordsMap.keys.elementAt(index),
                    jpName: wordsMap.values.elementAt(index),
                    sound: 'number_${index + 1}_sound.mp3'),
              );
            })));
  }
}
