bool isYouTubeURL(String url) {
  final RegExp youtubeRegex = RegExp(r'https:\/\/www\.youtube\.com\/watch\?v=([a-zA-Z0-9_-]+)');
  return youtubeRegex.hasMatch(url);
}

bool isGoogleDriveURL(String url) {
  final RegExp googleDriveRegex = RegExp(r'https:\/\/drive\.google\.com\/file\/d\/([a-zA-Z0-9_-]+)');
  return googleDriveRegex.hasMatch(url);
}
