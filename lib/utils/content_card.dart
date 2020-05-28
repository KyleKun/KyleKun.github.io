import 'package:flutter/material.dart';
import 'package:portfolio/utils/launch_url.dart';
import 'package:portfolio/game.dart';

import '../main.dart';

class ContentCard {
  String title;
  String desc;
  String url;
  String image;

  ContentCard(this.title, this.desc, this.url, this.image);

  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[200],
      elevation: 2.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(image),
            ),
            title: Row(
              children: [
                Text(
                  title,
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: isMobile ? 18 : 24,
                      fontFamily: 'Pixel'),
                ),
                GestureDetector(
                    child:
                        Icon(Icons.launch, size: 24, color: Colors.blue[300]),
                    onTap: () {
                      launchURL(url);
                    }),
              ],
            ),
            subtitle: Text(desc),
          ),
        ],
      ),
    );
  }
}
