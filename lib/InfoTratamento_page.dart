import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoTratamentoPage extends StatefulWidget {
  const InfoTratamentoPage({super.key});
  @override
  State<InfoTratamentoPage> createState() => _InfoTratamentoPage();
}
class _InfoTratamentoPage extends State<InfoTratamentoPage> {
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
        'Tratamento',
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
                  'assets/images/Medica.png',
                   width: 1000,
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
                    'O tratamento do câncer de pulmão varia conforme o tipo e o estágio da '
                        'doença. No tipo de pequenas células, a doença limitada é tratada '
                        'com quimioterapia, radioterapia torácica e radioterapia no crânio '
                        'para prevenir metástases. Já a doença extensa foca no controle e '
                        'qualidade de vida, com quimioterapia e imunoterapia, evitando a '
                        'radioterapia profilática no crânio.',
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.adamina(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'No tipo de não pequenas células, os estágios I e II são tratados com '
                        'cirurgia, quimioterapia e, às vezes, terapia-alvo ou imunoterapia. '
                        'O estágio III exige uma abordagem combinada, podendo envolver '
                        'cirurgia, quimio, rádio e imunoterapia. No estágio IV, o objetivo é '
                        'controlar a doença com quimioterapia, imunoterapia ou terapia-alvo, '
                        'conforme as mutações do tumor.',
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