import 'package:flowerslung/pages/menu_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MensagemFimJogoPage extends StatefulWidget {
  const MensagemFimJogoPage({super.key});
  @override
  State<MensagemFimJogoPage> createState() => _MensagemFimJogoPageState();
}

class _MensagemFimJogoPageState extends State<MensagemFimJogoPage> {
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
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: GoogleFonts.lora(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
              children: [
                TextSpan(
                  text:
                      'Parabéns! \nObrigado(a) por jogar! \nVocê conseguiu: \n10',
                ),
                WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: Image.asset(
                    'assets/images/FlorPontuacao.png',
                    height: 30,
                    width: 30,
                  ),
                ),
              ],
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
                        return MenuPage();
                      },
                    ),
                  );
                },
                child: Text(
                  'Menu Inicial',
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
