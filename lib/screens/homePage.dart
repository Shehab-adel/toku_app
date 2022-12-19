import 'package:flutter/material.dart';
import 'package:toku/screens/family_members.dart';
import 'package:toku/screens/numbers_page.dart';
import 'package:toku/screens/widget/home_page/container_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: const Color(0xff463228),
        title: const Text('Toku'),
      ),
      body: Column(children: [
        ContainerWidget(
            colorOfContainer: 0xffEf9235,
            text: "Numbers",
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const NumbersPage()))),
        ContainerWidget(
            colorOfContainer: 0xff558837,
            text: "Family members",
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const FamilyMembersPage()))),
        ContainerWidget(colorOfContainer: 0xff79359f, text: "Color"),
        ContainerWidget(colorOfContainer: 0xff50ADC7, text: "Phrases")
      ]),
    );
  }
}
