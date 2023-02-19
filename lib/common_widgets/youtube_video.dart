import 'dart:html';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class YoutubeVideo extends StatelessWidget {
  final String videoID;
  const YoutubeVideo({super.key, required this.videoID});

  @override
  Widget build(BuildContext context) {
    final IFrameElement iframeElement = IFrameElement()
      ..allowFullscreen = true
      ..src = 'https://www.youtube.com/embed/$videoID'
      ..style.width = '100%'
      ..style.height = '100%';

    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
      'iframeElement',
          (int viewId) => iframeElement,
    );

    return SizedBox(
      height: 400,
      child: HtmlElementView(
        key: UniqueKey(),
        viewType: 'iframeElement',
      ),
    );
  }
}
