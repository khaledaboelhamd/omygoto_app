import 'package:flutter/material.dart';
import 'package:tuko/components/items.dart';
import 'package:tuko/models/list_of_members.dart';

class MembersPage extends StatelessWidget {
  const MembersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            "Family Mambers",
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
          itemCount: listMembers.length,
          itemBuilder: (context, index) {
            return Items(
              listModel: listMembers[index],

            );
          }),
    );
  }
}
