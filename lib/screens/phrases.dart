import 'package:flutter/material.dart';
import 'package:tuko/components/items_for_phrases.dart';
import 'package:tuko/models/list_of_pharses.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            "Phrases",
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
      body: ListView.builder(
          itemCount: listPhrases.length,
          itemBuilder: (_, index) {
            return PhrasesItems(number: listPhrases[index]);
          }),
    );
  }
}
