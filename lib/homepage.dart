import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  static Uri url = Uri.parse("https://www.facebook.com");

  static Uri sms = Uri(
    scheme: 'sms',
    path: '01830579119',
  );

  final Uri emailLaunchUri = Uri(
    scheme: 'mailto',
    path: 'smith@example.com',
  );

  final Uri phoneLaunchUri = Uri(
    scheme: 'tel',
    path: '01830579119',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                launchUrl(url);
              },
              child: Text('Press Me')),
          SizedBox(height: 20,),
          ElevatedButton(
              onPressed: () {
                launchUrl(sms);
              },
              child: Text('Press Me')),
          SizedBox(height: 20,),
          ElevatedButton(
              onPressed: () {
                launchUrl(emailLaunchUri);
              },
              child: Text('Press Me')),
          SizedBox(height: 20,),
          ElevatedButton(
              onPressed: () {
                launchUrl(emailLaunchUri);
              },
              child: Text('Press Me')),
        ],
      ),
    );
  }
}
