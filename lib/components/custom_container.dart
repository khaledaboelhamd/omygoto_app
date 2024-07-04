import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomContainer extends StatelessWidget {
  CustomContainer({super.key, this.name, this.navPage});
  String? name;
  Widget? navPage;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (BuildContext context) {
            return navPage!;
          }),
        );
      },
      child: Container(
        decoration: BoxDecoration(
            color: const Color(0xffb08968),
            borderRadius: BorderRadius.circular(15)),
        height: 70,
        width: double.infinity,
        alignment: Alignment.centerLeft,
        child: Center(
          child: Text(
            "$name",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}
