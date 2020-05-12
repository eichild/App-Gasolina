import 'package:flutter/material.dart';

class Loadingbutton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(55),
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.9),
          borderRadius: BorderRadius.circular(5)),
      child: FlatButton(
        child: Text(
          "CALCULAR NOVAMENTE",
          style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 35,
              fontFamily: "Big Shoulders Display"),
        ),
        onPressed: () {},
      ),
    );
  }
}
