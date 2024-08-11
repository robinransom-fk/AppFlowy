library url_embed_plugin;

import 'package:flutter/material.dart';
import 'embed_helpers.dart';

class URLEmbedPlugin {
  Widget embedContent(String url) {
    if (isYouTubeURL(url)) {
      return YouTubeEmbedWidget(url: url);
    } else if (isGoogleDriveURL(url)) {
      return GoogleDriveEmbedWidget(url: url);
    }
    return Text('Unsupported URL');
  }
}
