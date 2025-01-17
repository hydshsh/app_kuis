import 'package:flutter/material.dart';

class CircleContainerAutoColor extends StatelessWidget {
  const CircleContainerAutoColor({super.key, required this.onCheck, this.child});

  final bool onCheck;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      margin: const EdgeInsets.fromLTRB(0, 0, 16, 0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: onCheck
          ? const Color(0xFF4A7FD6)
          : const Color.fromARGB(255, 255, 0, 0),
      ),
      child: child,
    );
  }
}
