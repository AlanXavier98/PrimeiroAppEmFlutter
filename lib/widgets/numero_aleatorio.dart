import 'package:flutter/material.dart';
import 'dart:math';

class NumeroAleatorio extends StatefulWidget {
  @override
  _NumeroAleatorio createState() => _NumeroAleatorio();
}

class _NumeroAleatorio extends State<NumeroAleatorio> {
  int _numero = 0;

  void _gerarnumero() {
    setState(() {
      Random numeroAleatorio = new Random();
      _numero = numeroAleatorio.nextInt(10);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            '$_numero',
            style: TextStyle(fontSize: 28),
          ),
          SizedBox(height: 30),
          RaisedButton(
            onPressed: _gerarnumero,
            child: Text("Gerar Número!"),
          )
        ],
      ),
    );
  }
}
