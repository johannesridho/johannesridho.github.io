import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

bool isMobile(double width) {
  return width < 850;
}

bool isTablet(double width) {
  return 850 <= width && width < 1100;
}

bool isDesktop(double width) {
  return width >= 1100;
}

TextSpan text(BuildContext context, String text) {
  return TextSpan(
    text: text,
    style: Theme.of(context).textTheme.bodyLarge,
  );
}

TextSpan link(BuildContext context, String text, String url) {
  if (url.startsWith('http')) {
    return TextSpan(
      text: text,
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
        color: Theme.of(context).primaryColor,
      ),
      recognizer: TapGestureRecognizer()..onTap = () async {
        final uri = Uri.parse(url);
        if (await canLaunchUrl(uri)) {
          await launchUrl(uri);
        }
      },
    );
  }

  return TextSpan(
    text: text,
    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
          color: Theme.of(context).primaryColor,
        ),
    recognizer: TapGestureRecognizer()
      ..onTap = () async {
        context.go(url);
      },
  );
}

Widget projectDetailImage(String fileName) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(18.0),
      child: Image.asset('images/projects/$fileName'),
    ),
  );
}

SelectableText projectDetailCodeAndTech(BuildContext context, String codeText, String codeURL, String technologies) {
  List<InlineSpan> children = [];
  if (codeText.isNotEmpty) {
    children.add(text(context, 'Code: '));
    children.add(link(context, codeText, codeURL));
    children.add(text(context, '\n'));
  }

  children.add(text(context, 'Technologies: $technologies'));

  return SelectableText.rich(
    textAlign: TextAlign.justify,
    TextSpan(children: children),
  );
}
