import 'package:flutter/material.dart';
import 'package:tuko/components/items.dart';
import 'package:tuko/models/list_of_numbers.dart';


// ignore: must_be_immutable
class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text(
              "Numbers",
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
            itemCount: listNumbers.length,
            itemBuilder: (context, i) {
              return Items(listModel: listNumbers[i],);
            }));
  }
}
