import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class JogoPergunta12Page extends StatefulWidget {
  const JogoPergunta12Page({super.key});

  @override
  State<JogoPergunta12Page> createState() => _JogoPergunta12Page();
}

class _JogoPergunta12Page extends State<JogoPergunta12Page> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/FundoPulmaoAmareloQueimado.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: buildListView(30, 60, 15, 25, 35),
      ),
    );
  }

  buildListView(int pontos, int pontosTotais, int valorEliminar, int valorUniversitarios, int valorPular,) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(16),
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Color(0xFFf4eedd),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: TextSpan(
                            style: GoogleFonts.lora(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                            children: [
                              WidgetSpan(
                                alignment: PlaceholderAlignment.middle,
                                child: Image.asset(
                                  'assets/images/FlorPontuacao.png',
                                  height: 30,
                                  width: 30,
                                ),
                              ),
                              TextSpan(text: ' $pontos'),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xFFa54d3b),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            'Parar',
                            style: GoogleFonts.openSans(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 12),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(0xFFf4eedd),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                'Qual o papel do apoio psicológico no tratamento do câncer de pulmão?',
                textAlign: TextAlign.left,
                style: GoogleFonts.inter(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: 8),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Color(0xFFf4eedd),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                children: [
                  opcao('A', 'Não tem importância'),
                  opcao('B', 'Serve apenas para o médico'),
                  opcao('C', 'Ajuda o paciente a lidar emocionalmente com a doença'),
                  opcao('D', 'Substitui a medicação'),
                ],
              ),
            ),

            SizedBox(height: 8),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 6),
                decoration: BoxDecoration(
                  color: Color(0xFFf4eedd),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ajuda(
                      '$valorEliminar',
                      'Eliminar',
                      'assets/images/FlorPontuacao.png',
                      'assets/images/Eliminar.png',
                    ),
                    ajuda(
                      '$valorUniversitarios',
                      'Universitários',
                      'assets/images/FlorPontuacao.png',
                      'assets/images/Universitarios.png',
                    ),
                    ajuda(
                      '$valorPular',
                      'Pular',
                      'assets/images/FlorPontuacao.png',
                      'assets/images/Pular.png',
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                  color: Color(0xFFf4eedd),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/PulmaoComFlores.png',
                      height: 60,
                    ),
                    SizedBox(width: 8),
                    Text(
                      '$pontosTotais',
                      style: GoogleFonts.inter(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  opcao(String letra, String texto) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: BoxDecoration(
          color: Color(0xFFB95D35),
          borderRadius: BorderRadius.circular(32),
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF7A2E1E),
              ),
              child: Text(
                letra,
                style: GoogleFonts.inter(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Text(
                texto,
                style: GoogleFonts.inter(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  ajuda(String custo, String texto, String iconeFlor, String iconeAjuda) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              custo,
              style: GoogleFonts.inter(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(width: 6),
            Image.asset(iconeFlor, height: 28),
          ],
        ),
        SizedBox(height: 4),
        Image.asset(iconeAjuda, height: 32),
        SizedBox(height: 4),
        Text(texto, style: GoogleFonts.inter(fontSize: 14)),
      ],
    );
  }
}