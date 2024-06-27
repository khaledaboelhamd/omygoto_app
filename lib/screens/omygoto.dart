import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class MokaChainPage extends StatelessWidget {
  const MokaChainPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            "Omygoto",
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
        color: const Color(0xffFFFFFF),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            children: [
              SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                    "assets/images/family_members/moka chain .png",
                    fit: BoxFit.cover,
                  )),
              const SizedBox(
                height: 100,
              ),
              Container(
                decoration: BoxDecoration(
                    color: const Color(0xffb08968),
                    borderRadius: BorderRadius.circular(15)),
                height: 70,
                width: double.infinity,
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "omg it's abdelbaseto  ",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: IconButton(
                        onPressed: () {
                          final player = AudioPlayer();
                          player.play(AssetSource("sounds/phrases/omg.MP3"));
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
