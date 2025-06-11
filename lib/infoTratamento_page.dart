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
          image: DecorationImage(
            image: AssetImage('assets/images/FundoPulmaoVermelho.jpg'),
            fit: BoxFit.cover,
          ),
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
      centerTitle: true,
      backgroundColor: Color(0xFFa54d3b),
      title: Row(
        children: [
        Image.asset(
        'assets/images/PulmaoComFlores.png',
        width: 80,
        height: 80,
      ),
      SizedBox(width: 30),
      Text(
        'Tratamento',
        style: GoogleFonts.lobster(
          color: Color(0xFFF4EEDD),
          fontSize: 45,
          fontWeight: FontWeight.w700,
        ),
      ),
      ],
      ) ,
      );
  }

  buildListView() {
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
                child: Image.asset('assets/images/Medica.png', height: 225),
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
                        'O tratamento do câncer de pulmão varia conforme o tipo e o estágio da '
                        'doença. No tipo de pequenas células, a doença limitada é tratada '
                        'com quimioterapia, radioterapia torácica e radioterapia no crânio '
                        'para prevenir metástases. Já a doença extensa foca no controle e '
                        'qualidade de vida, com quimioterapia e imunoterapia, evitando a '
                        'radioterapia profilática no crânio.',
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.adamina(
                          color: Colors.black,
                          fontSize: 19.5,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 8),
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
                          fontSize: 19.5,
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

        Padding(
          padding: EdgeInsets.only(bottom: 16),
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
