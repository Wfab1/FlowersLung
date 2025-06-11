import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class MensagemRespostaErradaJogoPage extends StatefulWidget {
  const MensagemRespostaErradaJogoPage({super.key});
  @override
  State<MensagemRespostaErradaJogoPage> createState() => _MensagemRespostaErradaJogoPageState();
}
class _MensagemRespostaErradaJogoPageState extends State<MensagemRespostaErradaJogoPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/FundoPulmaoAmareloQueimado.jpg'))
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: buildListView(20),
        ),
      ),
    );
  }
}
buildListView(int pontos) {
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
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: GoogleFonts.lora(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
            children: [
              TextSpan(text: 'Você errou, que pena!\nVocê conseguiu: \n$pontos'),
              WidgetSpan(
                alignment: PlaceholderAlignment.middle,
                child: Image.asset(
                  'assets/images/FlorPontuacao.png', height: 30, width: 30,
                ),
              ),
            ],
          ),
        ),
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
                color: Color(0xFFf4eedd),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text('Tela Inicial',
                style: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(width: 16),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 14),
              decoration: BoxDecoration(
                color: Color(0xFFf4eedd),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text('Sair',
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
