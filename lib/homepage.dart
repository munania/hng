import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var httpsUri = Uri(
    scheme: 'http',
    host: 'hng.tech',
    path: '/hire/mobile-ui-ux-developers',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Website link'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _launchInBrowser(httpsUri);
          },
          child: Text('Go to Website Page'),
        ),
      ),
    );
  }

  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }
}
