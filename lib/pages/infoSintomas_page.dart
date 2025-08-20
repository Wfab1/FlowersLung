import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flowerslung/widgets/cardSintomas_page.dart';
import 'package:flowerslung/domain/sintomas.dart';
import 'package:flowerslung/db/sintomas_dao.dart';

class InfoSintomasPage extends StatefulWidget {
  const InfoSintomasPage({super.key});
  @override
  State<InfoSintomasPage> createState() => _InfoSintomasPage();
}

class _InfoSintomasPage extends State<InfoSintomasPage> {
  List<Sintomas> listaSintomas = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    listaSintomas = await SintomasDao().listarSintomas();
    setState(() {});
  }

  Widget build(BuildContext context) {
    return Container(
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
            'Sintomas',
            style: GoogleFonts.lobster(
              color: Color(0xFFF4EEDD),
              fontSize: 45,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }

  buildListView() {
    return ListView(
      children: [
      ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.all(16),
      itemCount: listaSintomas.length,
      itemBuilder: (context, i) {
        return CardSintomas(sintomas: listaSintomas[i]);
      },
    ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset('assets/images/Fumante.png', height: 225),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 14),
                      decoration: BoxDecoration(
                        color: const Color(0xFFa54d3b),
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
                    const SizedBox(width: 16),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 14),
                      decoration: BoxDecoration(
                        color: const Color(0xFFa54d3b),
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
          ),
      ],
    );
  }
}
