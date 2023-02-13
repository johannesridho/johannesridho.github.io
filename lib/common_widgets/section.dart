import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  final String title;
  final String? imagePath;
  final List<TextSpan> contents;

  const Section({
    super.key,
    required this.title,
    this.imagePath,
    required this.contents,
  });

  @override
  Widget build(BuildContext context) {
    const imagePadding = EdgeInsets.symmetric(vertical: 30);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        imagePath == null
          ? const Divider(height: 15, color: Colors.transparent)
          : Padding(
              padding: imagePadding,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(imagePath!),
              ),
            ),
        SelectableText.rich(
          textAlign: TextAlign.justify,
          TextSpan(
            children: contents,
          ),
        ),
      ],
    );
  }
}
