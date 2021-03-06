import 'package:flutter/material.dart';
import 'package:harits_portofolio/ui/base/base_constanta.dart';
import 'package:url_launcher/url_launcher.dart';

class F {
  static String? encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }

  static launchUrl(BuildContext context, String url) async {
    if (!await launch(url)) {
      showError(context, "Cant Launch URL");
      return;
    }
  }

  static launchUrlEmail(
    BuildContext context,
  ) {
    Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: C.text.email,
    );
    launchUrl(context, emailLaunchUri.toString());
  }

  static void showError(
    BuildContext context,
    String error,
  ) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(error),
    ));
  }
}
