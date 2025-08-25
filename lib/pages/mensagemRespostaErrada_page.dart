import 'package:flowerslung/pages/mensagemFimJogo_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MensagemRespostaErradaPage extends StatefulWidget {
  const MensagemRespostaErradaPage({super.key});
  @override
  State<MensagemRespostaErradaPage> createState() =>
      _MensagemRespostaErradaPageState();
}

class _MensagemRespostaErradaPageState
    extends State<MensagemRespostaErradaPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/FundoPulmaoAmareloQueimado.jpg'),
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: buildListView(),
        ),
      ),
    );
  }

  Widget buildListView() {
    return Column(
      children: [
        SizedBox(height: 300),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 32),
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          decoration: BoxDecoration(
            color: Color(0xFFFDF6E3),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Text(
            'Que pena! Você errou \nTente novamente',
            textAlign: TextAlign.center,
            style: GoogleFonts.lora(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(bottom: 60),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFf4eedd),
                  minimumSize: Size(60, 60),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return MensagemFimJogoPage();
                      },
                    ),
                  );
                },
                child: Text(
                  'Parar',
                  style: GoogleFonts.openSans(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(width: 48),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFf4eedd),
                  minimumSize: Size(60, 60),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Continuar',
                  style: GoogleFonts.openSans(
                    color: Colors.black,
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
