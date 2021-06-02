import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valueSlider = 100.0;
  bool _disableCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders'),
        backgroundColor: Colors.black87,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _createSlider(),
            _checkBox(),
            createSwitch(),
            Expanded(child: _createImage()),
          ],
        ),
      ),
    );
  }

  Widget _createSlider() {
    return Slider(
        activeColor: Colors.black,
        label: 'Tamaño de la imagen',
        value: _valueSlider,
        min: 10.0,
        max: 400.0,
        onChanged: _disableCheck
            ? null
            : (value) {
                setState(() => _valueSlider = value);
              });
  }

  Widget _createImage() {
    return Image(
      image: NetworkImage(
          'https://res.cloudinary.com/synapsys/image/upload/v1622666327/avatarSebas_tftibt.png'),
      width: _valueSlider,
      fit: BoxFit.contain,
    );
  }

  Widget _checkBox() {
    // return Checkbox(
    //   value: _disableCheck,
    //   onChanged: (value) {
    //     setState(() {
    //       _disableCheck = value!;
    //     });
    //   },
    // );

    return CheckboxListTile(
      title: Text('Disabled Checkbox'),
      value: _disableCheck,
      onChanged: (value) {
        setState(() => _disableCheck = value!);
      },
    );
  }

  Widget createSwitch() {
    return SwitchListTile(
      title: Text('Disabled Checkbox'),
      value: _disableCheck,
      onChanged: (value) {
        setState(() => _disableCheck = value);
      },
    );
  }
}
