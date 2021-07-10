import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveButtons extends StatelessWidget {
  final String text;
  final Function handler;

  AdaptiveButtons(this.text, this.handler);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onPressed: handler,
          )
        : TextButton(
            onPressed: handler,
            style: TextButton.styleFrom(
              primary: Theme.of(context).primaryColor,
            ),
            child: Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          );
  }
}
