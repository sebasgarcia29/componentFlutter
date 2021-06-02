import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AvatarPage'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(7.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://cdn.dribbble.com/users/2192291/screenshots/4508722/artboard_11.png',
              ),
              radius: 25.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
          ),
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage(
              'https://res.cloudinary.com/synapsys/image/upload/v1619622306/IMG_2363_zqarxv.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}
