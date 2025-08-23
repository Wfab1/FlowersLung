import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flowerslung/domain/apoio.dart';

class CardApoio extends StatelessWidget {
  final Apoio apoio;

  CardApoio({required this.apoio, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFd3b360),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.black,
                    size: 24,
                  ),
                  SizedBox(width: 8),
                  Flexible(
                    child: Text(
                      apoio.titulo,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.adamina(
                        color: Colors.black,
                        fontSize: 21,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                apoio.subtitulo,
                textAlign: TextAlign.center,
                style: GoogleFonts.adamina(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 8),

            Container(
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: Color(0xFFFFF1CC),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                apoio.texto,
                textAlign: TextAlign.justify,
                style: GoogleFonts.adamina(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
