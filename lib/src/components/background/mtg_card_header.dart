import 'package:flutter/material.dart';

class HeaderBackground extends StatelessWidget {
  final Widget child;
  const HeaderBackground({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/head.webp"),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
