import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final Function changeHandler;

  TextControl(this.changeHandler);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        child: Text('s'),
        onPressed: changeHandler,
      ),
    );
  }
}
