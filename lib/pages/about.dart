import 'package:flutter/material.dart';
import 'package:puzzle8game/constants/style.dart';
import 'package:puzzle8game/widgets/customText.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomText(
            text: "About the app: ",
            size: 45,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomText(
            text:
                "This app is a puzzle-8 game developed in Flutter. You can improve your puzzle-8 skills by solving it multiple times and comparing your solution with the optimal solution that was calculated using a search algorithm. ",
            color: Colors.black,
            size: 25,
          ),
        ),
        Row(
          children: [
            CustomText(
              text: "Github repository: ",
              color: Colors.black,
              size: 20,
            ),
            // Flexible(
            //   child: Image.asset(
            //     'assets/github_logo.png',
            //   ),
            // ),
            GestureDetector(
              onTap: launchGithubURL,
              child: Image.asset(
                'assets/github_logo.png',
                width: 100.0,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ],
    );
  }
  void launchGithubURL() async {
    const url = 'https://github.com/muhammad-fahad-hussain';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
