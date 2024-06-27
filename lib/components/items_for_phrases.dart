// ignore: must_be_immutable

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tuko/models/obj_model.dart';

class PhrasesItems extends StatelessWidget {
  const PhrasesItems({super.key, required this.number, });
  final ObjModel number;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 120,
          width: double.infinity,
          color: const Color(0xffb08968),
          child: Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    number.jpWord!,
                    style: const TextStyle(color: Colors.white, fontSize: 21),
                  ),
                  Text(
                    number.enWord!,
                    style: const TextStyle(color: Colors.white, fontSize: 21),
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
                    player.play(AssetSource(number.soundPath!));
                  },
                  icon: const Icon(
                    Icons.play_arrow,
                    size: 35,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
            
          ),
        ),
        Container(height: 1,width: double.infinity,color: Colors.white,)
      ],
    );
  }
}
