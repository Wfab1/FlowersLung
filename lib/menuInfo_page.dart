import 'package:flowerslung/infoSintomas_page.dart';
import 'package:flowerslung/infoTratamento_page.dart';
import 'package:flowerslung/pulmao_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'InfoApoio_page.dart';

class MenuInfoPage extends StatefulWidget {
  const MenuInfoPage({super.key});
  @override
  State<MenuInfoPage> createState() => _MenuInfoPageState();
}

class _MenuInfoPageState extends State<MenuInfoPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/FundoPulmaoVermelho.jpg'),
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
      automaticallyImplyLeading: false,
      toolbarHeight: 100,
      actions: [
        Container(
          // child: Image.asset('assets/images/PulmaoComFlores.png', width: 80),
        ),
      ],
      centerTitle: true,
      backgroundColor: Color(0xFFa54d3b),
      title: Text(
        'Informações',
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
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          children: [
            SizedBox(height: 48),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFa54d3b),
                minimumSize: Size(250, 80),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return PulmaoPage();
                    },
                  ),
                );
              },
              child: Text(
                'Pulmão',
                style: GoogleFonts.adamina(
                  color: Color(0xFFF4EEDD),
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 14),
        Column(
          children: [
            SizedBox(height: 4),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFa54d3b),
                minimumSize: Size(250, 80),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return InfoSintomasPage();
                    },
                  ),
                );
              },
              child: Text(
                'Sintomas',
                style: GoogleFonts.adamina(
                  color: Color(0xFFF4EEDD),
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 14),
        Column(
          children: [
            SizedBox(height: 4),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFa54d3b),
                minimumSize: Size(250, 80),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return InfoTratamentoPage();
                    },
                  ),
                );
              },
              child: Text(
                'Tratamento',
                style: GoogleFonts.adamina(
                  color: Color(0xFFF4EEDD),
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 14),
        Column(
          children: [
            SizedBox(height: 4),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFa54d3b),
                minimumSize: Size(250, 80),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return InfoApoioPage();
                    },
                  ),
                );
              },
              child: Text(
                'Apoio',
                style: GoogleFonts.adamina(
                  color: Color(0xFFF4EEDD),
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 115),
        Row(mainAxisAlignment: MainAxisAlignment.end),
        Padding(
          padding: EdgeInsets.only(bottom: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFa54d3b),
                minimumSize: Size(200, 80),
              ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return MenuInfoPage();
                      },
                    ),
                  );
                },
                child: Text(
                  'Tela Inicial',
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
