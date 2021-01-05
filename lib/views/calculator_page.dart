import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  String outPut = '0';
  String _outPut = '0';
  double num1 = 0.0;
  double num2 = 0.0;
  String operand = '';

  ///codigo para a função dos butões
  buttonPresed(String buttonText) {
    switch (buttonText) {
      case 'C':
        {
          _outPut = '0';
          num1 = 0.0;
          num2 = 0.0;
          operand = "";
        }
        break;
      case '+':
        {
          num1 = double.parse(outPut);
          operand = buttonText;
          _outPut = '0';
        }
        break;
      case '-':
        {
          num1 = double.parse(outPut);
          operand = buttonText;
          _outPut = '0';
        }
        break;
      case '*':
        {
          num1 = double.parse(outPut);
          operand = buttonText;
          _outPut = '0';
        }
        break;
      case '/':
        {
          num1 = double.parse(outPut);
          operand = buttonText;
          _outPut = '0';
        }
        break;
      case '.':
        {
          _outPut.contains('.') ? null : _outPut += buttonText;
        }
        break;
      case '=':
        {
          num2 = double.parse(outPut);

          switch (operand) {
            case '+':
              {
                _outPut = (num1 + num2).toString();
              }
              break;
            case '-':
              {
                _outPut = (num1 - num2).toString();
              }
              break;
            case '*':
              {
                _outPut = (num1 * num2).toString();
              }
              break;
            case '/':
              {
                _outPut = (num1 / num2).toString();
              }
              break;
          } //fim switch interna
          num1 = 0.0;
          num2 = 0.0;
          operand = '';
        }
        break;
      default:
        {
          _outPut += buttonText;
        }
        break;
    }
    setState(() {
      outPut = double.parse(_outPut).toStringAsFixed(2);
    });
  }

  /// para criar os butões na tela
  Widget CustomButtomPad(String text) {
    return Expanded(
      child: Container(
        color: Colors.blue.shade50,
        child: OutlineButton(
          onPressed: buttonPresed(text),
          padding: EdgeInsets.all(24.0),
          child: Text(
            text,
            style: TextStyle(
                color: text == 'C' ? Colors.red : null,
                fontSize: 20.0,
                fontWeight: FontWeight.bold),
          ),
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
            style: BorderStyle.solid,
            width: 1,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var sizeds = MediaQuery.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: EdgeInsets.only(
                left: 16.0,
                top: sizeds.padding.top + 10.0,
                right: 16.0,
                bottom: 8.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Theme.of(context).primaryColor, width: 1.0),
                  ),
                  width: sizeds.size.width,
                  alignment: Alignment.center,
                  padding:
                      EdgeInsets.symmetric(vertical: 24.0, horizontal: 12.0),
                  child: Text(
                    "0",
                    style: TextStyle(
                        fontSize: 36.0,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).accentColor),
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
                      children: [CustomButtomPad("C"), CustomButtomPad('=')],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
