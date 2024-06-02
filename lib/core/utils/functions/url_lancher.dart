import 'package:bookly/core/utils/functions/custom_snack_bar.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> urlLancher(context, String? url) async {
  if (url != null) {
    var uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      customSnackBar(context, 'Oops URL is broken!');
    }
  }
}


