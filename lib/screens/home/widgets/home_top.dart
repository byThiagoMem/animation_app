import 'package:animationapp/screens/home/widgets/category_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeTop extends StatelessWidget {
  final Animation<double> containerGrow;

  HomeTop({@required this.containerGrow});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height * 0.4,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              "images/background.jpg",
            ),
            fit: BoxFit.cover),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Bem-vindo, Thiago",
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w300,
                color: Colors.white,
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              width: containerGrow.value * 120,
              height: containerGrow.value * 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("images/perfil.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                alignment: Alignment.center,
                width: containerGrow.value * 35,
                height: containerGrow.value * 35,
                margin: EdgeInsets.only(left: 80),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(80, 210, 194, 1.0),
                  shape: BoxShape.circle,
                ),
                child: Text(
                  "2",
                  style: TextStyle(
                    fontSize: containerGrow.value * 13,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            CategoryView(),
          ],
        ),
      ),
    );
  }
}
