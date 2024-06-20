import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  static Uri url = Uri.parse("https://www.facebook.com");

  static Uri smsLaunch = Uri(
    scheme: 'sms',
    path: '0123456789',
  );

  final Uri emailLaunch = Uri(
    scheme: 'mailto',
    path: 'smith@example.com',
  );

  final Uri phoneLaunch = Uri(
    scheme: 'tel',
    path: '123456789',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  launchUrl(url);
                },
                child: Text('Go to website')),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: () {
                  launchUrl(smsLaunch);
                },
                child: Text('Massage Me')),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: () {
                  launchUrl(emailLaunch);
                },
                child: Text('Email Me')),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: () {
                  launchUrl(phoneLaunch);
                },
                child: Text('Call Me')),
          ],
        ),
      ),
    );
  }
}
