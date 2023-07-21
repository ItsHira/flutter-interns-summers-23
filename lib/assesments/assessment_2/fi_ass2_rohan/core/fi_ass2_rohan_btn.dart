import 'package:flutter/material.dart';

class FiAssRohanButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color color;
  final Widget child;
  const FiAssRohanButton({
    super.key,
    required this.child,
    required this.onPressed,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(20.0),
        width: double.infinity,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(50.0),
          border: Border.all(width: 2, color: const Color(0xFF9e9898)),
        ),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
