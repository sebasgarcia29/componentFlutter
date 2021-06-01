import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final options = ['Primero', 'Segundo', 'Tercero', 'Cuarto', 'Quinto'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Temp components'),
      ),
      body: ListView(
        children: _crearItemsCorta(),
      ),
    );
  }

  // List<Widget> _crearItems() {
  //   List<Widget> lista = [];

  //   for (String opt in options) {
  //     final tempWidget = ListTile(
  //       title: Text('$opt'),
  //     );
  //     lista
  //       ..add(tempWidget)
  //       ..add(Divider(
  //         color: Colors.blue,
  //         height: 30.0,
  //       ));
  //   }

  //   return lista;
  // }

  List<Widget> _crearItemsCorta() {
    return options.map((item) {
      return Column(
        children: [
          ListTile(
            title: Text(item),
            subtitle: Text('Cualquier cosa'),
            leading: Icon(Icons.ac_unit),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){},
          ),
          Divider(
          color: Colors.blue,
          // height: 30.0,
        ),
        ],
      );
    }).toList();
  }
}
