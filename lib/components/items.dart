// ignore: must_be_immutable

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tuko/models/obj_model.dart';

class Items extends StatelessWidget {
  const Items({super.key, required this.listModel,});
  final ObjModel listModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 105,
      width: double.infinity,
      color: Color(0xffb08968),
      child: Row(
        children: [
          Container(
            color: const Color(0xffFEF8E2),
            child: Image.asset(listModel.image!),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                listModel.jpWord!,
                style: const TextStyle(color: Colors.white, fontSize: 22),
              ),
              Text(
                listModel.enWord!,
                style: const TextStyle(color: Colors.white, fontSize: 22),
              ),
            ],
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource(listModel.soundPath!));
              },
              icon: const Icon(
                Icons.play_arrow,
                size: 40,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
