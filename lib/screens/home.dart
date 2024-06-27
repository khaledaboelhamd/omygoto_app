
import 'package:flutter/material.dart';
import 'package:tuko/components/custom_container.dart';
import 'package:tuko/screens/color.dart';
import 'package:tuko/screens/members.dart';
import 'package:tuko/screens/omygoto.dart';
import 'package:tuko/screens/numbers.dart';
import 'package:tuko/screens/phrases.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            "Omygoto App",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          actions: const [
            Text(
              "@aboelhamd",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            SizedBox(
              width: 5,
            )
          ],
          backgroundColor: const Color(0xff7f5539)),
      body: Container(
        color: const Color(0xffffedd8),
        child: ListView(
          children: [
            const SizedBox(
              height: 25,
            ),
            CustomContainer(
              name: "Numbers",
              navPage: const NumbersPage(),
            ),
            CustomContainer(
              name: "Family Members",
              navPage: const MembersPage(),
            ),
            CustomContainer(
              name: "Colors",
              navPage: const ColorsPage(),
            ),
            CustomContainer(
              name: "Phrases",
              navPage: const PhrasesPage(),
            ),
            CustomContainer(
              name: "Omigoto",
              navPage: const MokaChainPage(),
            ),
          ],
        ),
      ),
    );
  }
}
