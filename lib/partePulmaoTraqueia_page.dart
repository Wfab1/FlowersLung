import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class partePulmaoTraqueiaPage extends StatefulWidget {
  const partePulmaoTraqueiaPage({super.key});
  @override
  State<partePulmaoTraqueiaPage> createState() => _partePulmaoTraqueiaPage();
}


class _partePulmaoTraqueiaPage extends State<partePulmaoTraqueiaPage> {
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
              fontSize: 45,
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
                child: Image.asset('assets/images/PulmaoTraqueia.png', height: 250),
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
                        'A traqueia é um tubo cartilaginoso que conecta a laringe '
                            'aos brônquios. Ela é formada por anéis de cartilagem '
                            'em forma de “C”, que mantêm o canal sempre aberto para'
                            'a passagem do ar. Sua principal função é levar o ar '
                            'inspirado até os pulmões e também auxiliar na filtragem'
                            'de partículas e poeiras, já que é revestida por cílios e '
                            'muco. Ela se divide ao final em dois brônquios principais, '
                            'que conduzem o ar a cada pulmão.',
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