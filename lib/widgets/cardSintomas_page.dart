import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../domain/sintomas.dart';

class CardSintomas extends StatefulWidget {
  Sintomas sintomas;

  CardSintomas({required this.sintomas, super.key});

  @override
  State<CardSintomas> createState() => _CardSintomasState();
}

class _CardSintomasState extends State<CardSintomas> {
  Sintomas get sintomas => widget.sintomas;

  @override
  Widget build(BuildContext context) {
    return buildBloco(sintomas.texto);
  }

  buildBloco(String texto) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset('assets/images/Fumante.png', height: 225),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Color(0xFFD7AE5E),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ListView(
                    children: [
                      Text(
                        texto,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
