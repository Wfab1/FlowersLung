import 'package:flowerslung/domain/mensagemRespostaErrada.dart';
import 'package:flowerslung/widgets/cardMensagemRespostaErrada.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../db/mensagemRespostaErrada_dao.dart';
import 'package:flowerslung/pages/menu_page.dart';

class MensagemRespostaErradaJogoPage extends StatefulWidget {
  const MensagemRespostaErradaJogoPage({super.key});

  @override
  State<MensagemRespostaErradaJogoPage> createState() =>
      _MensagemRespostaErradaJogoPageState();
}

class _MensagemRespostaErradaJogoPageState
    extends State<MensagemRespostaErradaJogoPage> {
  List<Mensagemrespostaerrada> listaMensagemRespostaErrada = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    listaMensagemRespostaErrada = await MensagemrespostaerradaDao().listarMensagemrespostaerrada();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/FundoPulmaoAmareloQueimado.jpg'),
            fit: BoxFit.cover,
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
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: listaMensagemRespostaErrada.length,
            itemBuilder: (context, i) {
              return CardMensagemRespostaErrada(
                mensagemrespostaerrada: listaMensagemRespostaErrada[i],
              );
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 45),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFf4eedd),
                  minimumSize: Size(60, 60),
                ),
                onPressed: () {
                  // Navigator.push(
                  //  context,
                  //MaterialPageRoute(
                  // builder: (context) {
                  //  return ();
                  // },
                  //),
                  // );
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
                 // Navigator.push(
                  //  context,
                    //MaterialPageRoute(
                     // builder: (context) {
                      //  return ();
                     // },
                    //),
                 // );
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
