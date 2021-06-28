import 'package:flutter/material.dart';

class ButtonLogin extends StatelessWidget {
  final String text;
  final Function onPressed;

  const ButtonLogin({Key key, @required this.text, @required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      elevation: 2,
      highlightElevation: 5,
      color: Colors.red,
      shape: StadiumBorder(),
      onPressed: this.onPressed,
      child: Container(
        width: double.infinity,
        height: 55,
        child: Center(
            child: Text(this.text,
                style: TextStyle(color: Colors.white, fontSize: 17))),
      ),
    );
  }
}
