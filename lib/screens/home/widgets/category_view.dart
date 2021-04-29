import 'package:flutter/material.dart';

class CategoryView extends StatefulWidget {
  @override
  _CategoryViewState createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {

  final List<String> categories = [
    "TRABALHO",
    "ESTUDOS",
    "CASA",
  ];
  int _category = 0;

  void selectForward(){
    setState(() {
      _category++;
    });
  }

  void selectBackward(){
    setState(() {
      _category--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white, size: 20.0),
          disabledColor: Colors.white24,
          onPressed: _category > 0 ? selectBackward : null,
        ),
        Text(
          categories[_category],
          style: TextStyle(
              color: Colors.white, fontSize: 15.0, letterSpacing: 1.2),
        ),
        IconButton(
          icon: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 20.0),
          disabledColor: Colors.white24,
          onPressed: _category < categories.length - 1 ? selectForward : null,
        ),
      ],
    );
  }
}
