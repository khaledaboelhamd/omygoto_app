import 'package:flutter/material.dart';
import 'package:tuko/components/items.dart';
import 'package:tuko/models/list_of_colors.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            "Colors",
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
      body: ListView.builder(itemCount: listColors.length,itemBuilder: (_, index) {
        return Items(listModel: listColors[index], );
      }),
    );
  }
}
