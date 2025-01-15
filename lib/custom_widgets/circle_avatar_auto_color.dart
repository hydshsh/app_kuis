import 'package:flutter/material.dart';

class CircleAvatarAutoColor extends StatelessWidget {
  const CircleAvatarAutoColor({super.key, required this.greenred, this.child});

  final Color greenred;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: greenred,
      child: child,
    );
  }
}