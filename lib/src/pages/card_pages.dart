import 'package:flutter/material.dart';

class CardPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CardPages'),
        backgroundColor: Color(0xff1C2D1A),
      ),
      body: ListView(
        // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        padding: EdgeInsets.all(10),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('I am title from card'),
            subtitle: Text(
                'Do ea ea sint do et Do ea ea sint do et Do ea ea sint do et.'),
          ),
          Row(
            children: <Widget>[
              TextButton(
                child: Text(
                  'Cancelar',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black.withOpacity(0.9)),
                ),
                onPressed: () {},
              ),
              TextButton(
                child: Text('Ok'),
                onPressed: () {},
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.end,
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    final card = Container(
      // clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage(
                'https://4kwallpapers.com/images/wallpapers/master-chief-halo-infinite-artwork-3840x2160-2633.jpg'),
            placeholder: AssetImage('assets/loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 250.0,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('I dont know cant push'),
          ),
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              spreadRadius: 2.0,
              offset: Offset(2.0, 10.0),
            ),
          ]
          // color: Colors.red,
          ),
      child: ClipRRect(
        child: card,
        borderRadius: BorderRadius.circular(30.0),
      ),
    );
  }
}
