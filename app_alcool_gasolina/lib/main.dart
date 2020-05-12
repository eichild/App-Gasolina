import 'package:app_alcool_gasolina/widgets/input_widget.dart';
import 'package:app_alcool_gasolina/widgets/logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Álcool ou Gasolina',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  var gasControlller = new MoneyMaskedTextController();
  var alcController = MoneyMaskedTextController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: <Widget>[
          Logo(),
          Container(
            margin: EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Compensa utilizar gasolina",
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 40,
                      fontFamily: "Big Shoulders Display"),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
              
              ],
            ),
          ),
          Input(
            ctrl: gasControlller,
            label: "Gasolina",
          ),
          Input(
            ctrl: alcController,
            label: "Alcool",
          ),
          Container(
            margin: EdgeInsets.all(55),
            height: 60,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.9),
                borderRadius: BorderRadius.circular(5)),
            child: FlatButton(
              child: Text(
                "CALCULAR",
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 35,
                    fontFamily: "Big Shoulders Display"),
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
