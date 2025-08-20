import 'package:flowerslung/domain/mensagemRespostaErrada.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardMensagemRespostaErrada extends StatefulWidget {
  final Mensagemrespostaerrada mensagemrespostaerrada;

  const CardMensagemRespostaErrada({
    required this.mensagemrespostaerrada,
    super.key,
  });

  @override
  State<CardMensagemRespostaErrada> createState() =>
      _CardMensagemRespostaErradaState();
}

class _CardMensagemRespostaErradaState
    extends State<CardMensagemRespostaErrada> {
  Mensagemrespostaerrada get mensagemrespostaerrada =>
      widget.mensagemrespostaerrada;

  @override
  Widget build(BuildContext context) {
    return buildMensagem(
      mensagemrespostaerrada.mensagem,
      mensagemrespostaerrada.pontos,
    );
  }

  Widget buildMensagem(String mensagem, int pontos) {
    return ListView(
      children: [
        const SizedBox(height: 300),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 32),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          decoration: BoxDecoration(
            color: const Color(0xFFFDF6E3),
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
                TextSpan(text: mensagem),
                TextSpan(text: " $pontos "),
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
      ],
    );
  }
}
