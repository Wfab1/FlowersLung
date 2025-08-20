import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flowerslung/widgets/cardSintomas_page.dart';
import 'package:flowerslung/domain/sintomas.dart';
import 'package:flowerslung/db/sintomas_dao.dart';
import 'package:flowerslung/pages/menuInfo_page.dart';
import 'package:flowerslung/pages/menu_page.dart';

class CardSintomas extends StatelessWidget {
  String texto;

  CardSintomas({required this.texto, super.key});

  @override
  Widget build(BuildContext context) {
    return buildBloco(texto, Color(0xFFD7AE5E));
  }

  buildBloco(String texto, Color corFundo) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12),
      child: Container(
        decoration: BoxDecoration(
          color: corFundo,
          borderRadius: BorderRadius.circular(16),
        ),
        padding: EdgeInsets.all(16),
        child: Text(
          texto,
          textAlign: TextAlign.justify,
          style: GoogleFonts.adamina(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
