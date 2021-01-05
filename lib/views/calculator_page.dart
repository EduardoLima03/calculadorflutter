import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calculadora/views/custom_buttom_pad.dart';

class CalculatorPage extends StatefulWidget {
  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  @override
  Widget build(BuildContext context) {
    var sizeds = MediaQuery.of(context);
    return Scaffold(
      body: LayoutBuilder(builder: (_, constraints) {
        /// o Widget LayoutBuilder, permite pega a era utiu da tela
        /// em altura e largura com o atributo constraints
        return SingleChildScrollView(
          child: Container(
            child: Padding(padding: EdgeInsets.only(left: 16.0, top: sizeds.padding.top, right: 16.0,bottom: 8.0),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Theme.of(context).primaryColor,
                          width: 1.0),
                    ),
                    width: constraints.maxWidth,
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 12.0),
                    child: Text("0",
                    style: TextStyle(
                      fontSize: 36.0,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).accentColor
                    ),
                    ),
                  ),
                  Divider(),
                  Column(
                    children: [
                      Row(
                        children: [
                          CustomButtomPad("7"),
                          CustomButtomPad("8"),
                          CustomButtomPad("9"),
                          CustomButtomPad("*"),
                        ],
                      ),
                      Row(
                        children: [
                          CustomButtomPad("4"),
                          CustomButtomPad("5"),
                          CustomButtomPad("6"),
                          CustomButtomPad("-"),
                        ],
                      ),
                      Row(
                        children: [
                          CustomButtomPad("1"),
                          CustomButtomPad("2"),
                          CustomButtomPad("3"),
                          CustomButtomPad("+"),
                        ],
                      ),
                      Row(
                        children: [
                          CustomButtomPad("."),
                          CustomButtomPad("0"),
                          CustomButtomPad("/"),
                        ],
                      ),
                      Row(
                        children: [
                          CustomButtomPad("C"),
                          CustomButtomPad('=')
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        );

      }),
    );
  }
}
