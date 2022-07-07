import 'package:flutter/material.dart';

import 'glow_effect.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color1 = const Color.fromARGB(255, 0, 11, 36);
    String bgURL =
        'https://w0.peakpx.com/wallpaper/895/832/HD-wallpaper-black-white-blackandwhite-money-heist-thumbnail.jpg';
    return Scaffold(
      backgroundColor: color1,
      body: Center(
        child: SizedBox(
          height: 320,
          width: 320,
          child: Stack(
            children: [
              const Gloweffect(),
              Container(
                padding: const EdgeInsets.all(35),
                height: 320,
                width: 320,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(bgURL),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
