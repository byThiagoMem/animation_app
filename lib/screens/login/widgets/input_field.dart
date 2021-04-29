import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String hint;
  final bool obscure;
  final IconData icon;

  InputField({this.hint, this.obscure, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: _border(Colors.white, 0.5),
        ),

      child: TextFormField(
        obscureText: obscure,
        style: TextStyle(
          color: Colors.white,
        ),
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Colors.white,
          ),
          border: InputBorder.none,
          hintText: hint,
          hintStyle: TextStyle(
            color: Colors.white,
            fontSize: 15.0
          ),
          contentPadding: EdgeInsets.only(
            top: 20,
            right: 20,
            left: 5,
            bottom: 20,
          )
        ),
      ),
    );
  }


  _border(Color _color, double _width)=> Border(
      bottom: BorderSide(
        color: Colors.white,
        width: 0.5,
      ),
    top: BorderSide(
      color: Colors.white,
      width: 0.5,
    ),
    right: BorderSide(
      color: Colors.white,
      width: 0.5,
    ),
    );

}
