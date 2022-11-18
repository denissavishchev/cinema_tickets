import 'package:flutter/material.dart';

class TimeButton extends StatelessWidget {
  const TimeButton({Key? key, required this.color, required this.child, required this.onPress,}) : super(key: key);

  final Color color;
  final Widget child;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: child,
      ),
    );
  }
}