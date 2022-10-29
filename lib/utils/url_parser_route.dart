import 'package:url_launcher/url_launcher.dart';

void urlParserRoute(String url) async {
  final Uri uri = Uri.parse(url);
  await launchUrl(uri);
}
