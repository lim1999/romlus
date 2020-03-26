import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:romlus/src/widgets/Controls/CustomButton.dart';
import 'package:romlus/src/widgets/Controls/CustomButtonDate.dart';
import 'package:romlus/src/widgets/Controls/CustomTextFieldBorderBottom.dart';

class UserUpdateWidget extends StatefulWidget {
  UserUpdateWidget({Key key}) : super(key: key);

  @override
  _UserUpdateWidgetState createState() => _UserUpdateWidgetState();
}

class _UserUpdateWidgetState extends State<UserUpdateWidget> {
  File imageFile;
  _openGallery(BuildContext context) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.gallery);
    this.setState(() {
      imageFile = picture;
    });
  }

  Widget _decideImageView () {
    if(imageFile == null){
      return Image.asset("images/Tools/no-photo-available.png");
    }else{
      return Image.file(
        imageFile,
        fit:BoxFit.contain,
        );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          InkWell(
            child: Container(
                width: double.infinity,
                height: 250.0,
                decoration: BoxDecoration(
                  color: Color(0xff0000004D),
                  border: Border.all(color: Color(0xff153F59)),
                  borderRadius: BorderRadius.circular(10.0)
                ),
              child: _decideImageView()
            ),
            onTap: () {
              _openGallery(context);
            },
          ),
          CustomTextFieldBorderBottom(
            hintText: "ឈ្មោះអ្នកប្រើប្រាល់" 
          ),
          CustomTextFieldBorderBottom(
            hintText: "អាសយដ្ធាន" 
          ),
          CustomButtonDate(),
          CustomTextFieldBorderBottom(
            hintText: "មុខរបរ" 
          ),
          CustomTextFieldBorderBottom(
            hintText: "សញ្ជាតិ" 
          ),
          CustomTextFieldBorderBottom(
            hintText: "លេខអត្តសញ្ញាណប័ណ្ណ" 
          ),
          Container(
            padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
            child: CustomButton(
              labelText: "Save",
              minWidth: double.infinity,
              colors: Color(0xff153F59),
              onpressedhandler: () {
                print("រក្សាទុក");
              },
            ),
          )
        ],
      ),
    );
  }
}