

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String labelText;
  final double minWidth;
  final Function onpressedhandler;
  final Color colors;
  const CustomButton({Key key, this.labelText, this.minWidth, this.onpressedhandler,this.colors}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  InkWell(
          child: Container(
            child: PhysicalModel(
              color: colors,
              borderRadius: BorderRadius.circular(10.0),
              child: MaterialButton(
                child: Text(
                  labelText,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15
                  ),
                ),
                onPressed: onpressedhandler,
                minWidth: minWidth,
                height: 45.0,
              ),
            )
          ),
        );
  }
}

