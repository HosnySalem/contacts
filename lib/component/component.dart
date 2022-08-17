import 'package:flutter/material.dart';
import 'package:contacts/login_Screen.dart';
Widget field({TextEditingController type,TextInputType texttype,String hint,String label,Icon icon,bool vis}){
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      height: 60,
      child: TextFormField(
        controller: type,
        textDirection: TextDirection.ltr,
        keyboardType: texttype,
        obscureText: vis ,
        decoration: InputDecoration(
          prefixIcon: icon,
          hintText:hint ,
          labelText: label,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    ),
  );
}