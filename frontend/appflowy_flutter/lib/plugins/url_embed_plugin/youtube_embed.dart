import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class YouTubeEmbedWidget extends StatelessWidget {
  final String url;

  YouTubeEmbedWidget({required this.url});

  String get videoId {
    final RegExp youtubeRegex = RegExp(r'https:\/\/www\.youtube\.com\/watch\?v=([a-zA-Z0-9_-]+)');
    return youtubeRegex.firstMatch(url)!.group(1)!;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: WebView(
        initialUrl: 'https://www.youtube.com/embed/$videoId',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
