import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class partePulmaoBronquioPage extends StatefulWidget {
  const partePulmaoBronquioPage({super.key});
  @override
  State<partePulmaoBronquioPage> createState() => _partePulmaoBronquioPage();
}

class _partePulmaoBronquioPage extends State<partePulmaoBronquioPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Scaffold(
          backgroundColor: Color(0xFFf4eedd),
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
            'Pulmão',
            style: GoogleFonts.lobster(
              color: Color(0xFFF4EEDD),
              fontSize: 50,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }

  buildListView() {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.only(top: 12),
                alignment: Alignment.bottomCenter,
                child: Image.asset('assets/images/PartePulmaoBronquio.png', height: 250),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                  margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  decoration: BoxDecoration(
                    color: Color(0xFFD7AE5E),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ListView(
                    children: [
                      Text(
                        'Os brônquios são as duas ramificações principais da '
                            'traqueia, cada uma conduzindo o ar para um dos pulmões'
                            '(direito e esquerdo). Dentro dos pulmões, os brônquios'
                            'se dividem em brônquios menores, chamados brônquios '
                            'secundários e terciários, que distribuem o ar por '
                            'todo o órgão. Os brônquios também são revestidos por'
                            'muco e cílios, que ajudam a capturar impurezas e '
                            'evitar que agentes nocivos cheguem às partes mais '
                            'delicadas do pulmão.',
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
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
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