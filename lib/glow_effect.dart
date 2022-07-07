import 'dart:ui';

import 'package:flutter/material.dart';

class Gloweffect extends StatefulWidget {
  const Gloweffect({Key? key}) : super(key: key);

  @override
  State<Gloweffect> createState() => _MainPageState();
}

class _MainPageState extends State<Gloweffect> with TickerProviderStateMixin {
  Color color1 = const Color.fromARGB(255, 0, 11, 36);
  Color color2 = Colors.blue;
  Color color4 = Colors.purple;

  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 1,
      ),
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.linear,
    );
    _controller.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RotationTransition(
        turns: _animation,
        child: Container(
          padding: const EdgeInsets.all(20),
          height: 320,
          width: 320,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              color2,
              color4,
            ]),
            borderRadius: BorderRadius.circular(150),
          ),
          child: Stack(
            children: [
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 20, sigmaY: 15),
                child: Container(
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      color2,
                      color4,
                    ]),
                    borderRadius: BorderRadius.circular(150),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
