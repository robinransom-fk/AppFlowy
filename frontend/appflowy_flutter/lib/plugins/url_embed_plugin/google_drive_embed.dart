import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class GoogleDriveEmbedWidget extends StatelessWidget {
  final String url;

  GoogleDriveEmbedWidget({required this.url});

  String get fileId {
    final RegExp googleDriveRegex = RegExp(r'https:\/\/drive\.google\.com\/file\/d\/([a-zA-Z0-9_-]+)');
    return googleDriveRegex.firstMatch(url)!.group(1)!;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: WebView(
        initialUrl: 'https://drive.google.com/file/d/$fileId/preview',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
