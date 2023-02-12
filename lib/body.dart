import 'package:flutter/material.dart';

import 'header.dart';

class Body extends StatelessWidget {
  final String title;
  final Widget? child;

  const Body({
    super.key,
    required this.title,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(title: title),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 40),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Image.asset('images/background.webp').image,
            fit: BoxFit.cover,
          ),
        ),
        child: child,
      ),
    );
  }
}