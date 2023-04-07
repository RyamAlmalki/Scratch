import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class ThemeHelper{
  InputDecoration textInputDecoration([String labelText="", String hintText = ""]){
    return InputDecoration(
      labelText: labelText,
      hintText: hintText,
      fillColor: Colors.white,
      filled: true,
      contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
      focusedBorder: UnderlineInputBorder(borderRadius: BorderRadius.circular( 100.0), borderSide: const BorderSide(color: Colors.grey)),
      enabledBorder: UnderlineInputBorder(borderRadius: BorderRadius.circular( 100.0), borderSide: BorderSide(color: Colors.grey.shade400)),
      errorBorder: UnderlineInputBorder(borderRadius: BorderRadius.circular( 100.0), borderSide: const BorderSide(color: Colors.red, width: 2.0)),
      focusedErrorBorder: UnderlineInputBorder(borderRadius: BorderRadius.circular( 100.0), borderSide: const BorderSide(color: Colors.red, width: 2.0)),
    );
  }


}

class LoginFormStyle{

}