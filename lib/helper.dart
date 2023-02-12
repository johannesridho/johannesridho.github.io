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

TextSpan getStyledText(BuildContext context, String text) {
  return TextSpan(
    text: text,
    style: Theme.of(context).textTheme.bodyLarge,
  );
}

TextSpan getStyledExternalLink(BuildContext context, String text, String url) {
  return TextSpan(
    text: text,
    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
      color: Theme.of(context).primaryColor,
      decoration: TextDecoration.underline,
    ),
    recognizer: TapGestureRecognizer()..onTap = () async {
      final uri = Uri.parse(url);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
      }
    },
  );
}

TextSpan getStyledInternalLink(BuildContext context, String text, String url) {
  return TextSpan(
    text: text,
    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
      color: Theme.of(context).primaryColor,
      decoration: TextDecoration.underline,
    ),
    recognizer: TapGestureRecognizer()..onTap = () async {
      context.go(url);
    },
  );
}
