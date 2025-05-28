import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoSintomasPage extends StatefulWidget {
  const InfoSintomasPage({super.key});
  @override
  State<InfoSintomasPage> createState() => _InfoSintomasPage();
}
class _InfoSintomasPage extends State<InfoSintomasPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/FundoPulmaoVermelho.jpg'))
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: buildAppBar(),
          body: buildListView(),
        ),
      ),
    );
  }

  buildAppBar() {
    return AppBar(
      toolbarHeight: 100,
      actions: [
        Container(
          // child: Image.asset('assets/images/PulmaoComFlores.png', width: 80),
        ),
      ],
      centerTitle: true,
      backgroundColor: Color(0xFFa54d3b),
      title: Text(
        'Sintomas',
        style: GoogleFonts.lobster(
          color: Color(0xFFF4EEDD),
          fontSize: 45,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

  buildListView() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.all(8),
              width: 110,
              height: 500,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  'assets/images/Fumante.png',
                  width: 100,
                ),
              ),
            ),
            SizedBox(width: 8),
            Container(
              width: 250,
              height: 500,
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Color(0xFFD7AE5E),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'O câncer de pulmão pode se manifestar de maneira silenciosa no início, mas alguns sintomas podem indicar que algo não está bem. Identificar essas alterações precocemente faz toda a diferença no diagnóstico e no tratamento. Os sinais mais comuns são:',
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.adamina(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '• Dores locais: costela ou peito;',
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.adamina(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '• Tipos de dor: aguda ou incômoda;',
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.adamina(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '• Dores circunstanciais: ao respirar;',
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.adamina(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '• Tosse: com catarro, seca, com sangue, forte ou crônica;',
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.adamina(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '• No sistema respiratório: falta de ar, infecções respiratórias frequentes ou respiração sibilante;',
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.adamina(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '• No corpo: fadiga ou perda de apetite;',
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.adamina(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '• Também é comum: fraqueza, inchaço dos gânglios, perda de peso ou pressão no peito.',
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.adamina(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(bottom: 45),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 14),
                decoration: BoxDecoration(
                  color: Color(0xFFa54d3b),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  'Tela Inicial',
                  style: GoogleFonts.openSans(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(width: 16),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 14),
                decoration: BoxDecoration(
                  color: Color(0xFFa54d3b),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  'Voltar',
                  style: GoogleFonts.openSans(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
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