import 'package:flutter/material.dart';
import 'package:toku/screens/widget/numbers_page/number_container_widget.dart';
import '../models/number_page/number.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({Key? key}) : super(key: key);
  final Map<String, String> familyMembersMap = const {
    'younger sister': 'Imouto',
    'younger brother': 'Otouto',
    'Son': 'Musuko',
    'older sister': 'Ane',
    'older brother': 'Ani',
    'Mother': 'Haha',
    'Grand mother': 'Sobo',
    'Grand father': 'Sofu',
    'Father': 'Chichi',
    'daughter': 'Musume'
  };

  final List<String> familyMembersImagesList = const [
    'family_younger_sister.png',
    'family_younger_brother.png',
    'family_son.png',
    'family_older_sister.png',
    'family_older_brother.png',
    'family_mother.png',
    'family_grandmother.png',
    'family_grandfather.png',
    'family_father.png',
    'family_daughter.png'
  ];

  final List<String> familyMembersSoundsList = const [
    'younger sister.wav',
    'younger brohter.wav',
    'son.wav',
    'older sister.wav',
    'older bother.wav',
    'mother.wav',
    'grand mother.wav',
    'grand father.wav',
    'father.wav',
    'daughter.wav',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Family Members"),
        backgroundColor: const Color(0xff463228),
      ),
      body: ListView.separated(
          itemCount: 10,
          separatorBuilder: (context, index) => const Divider(height: 2),
          itemBuilder: ((context, index) {
            return NumberContainerWidget(
              color: const Color(0xff558837),
              prefix: 'assets/sounds/family_members/',
              number: Item(
                image:
                    "assets/images/family_members/${familyMembersImagesList[index]}",
                enName: familyMembersMap.keys.elementAt(index),
                jpName: familyMembersMap.values.elementAt(index),
                sound: familyMembersSoundsList[index],
              ),
            );
          })),
    );
  }
}
