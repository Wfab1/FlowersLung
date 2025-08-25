import 'package:flowerslung/pages/mensagemInicioJogo_page.dart';
import 'package:flowerslung/pages/jogoPergunta_page.dart';
import 'package:flowerslung/pages/comunidade_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flowerslung/pages/menuInfo_page.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});
  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/FundoPulmaoAmareloQueimado.jpg'),
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
      automaticallyImplyLeading: false,
      toolbarHeight: 100,
      actions: [
        Container(
          child: Image.asset('assets/images/PulmaoComFlores.png', width: 80),
        ),
      ],
      centerTitle: false,
      backgroundColor: Color(0xFFf4eedd),
      title: Text(
        'Flowers Lung',
        style: GoogleFonts.lobster(color: Color(0xFFE1A100), fontSize: 45),
      ),
    );
  }

  buildListView() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFf4eedd),
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
              child: Image.asset(
                'assets/images/IconPulmao.png',
                height: 70,
                width: 80,
              ),
            ),
            Text(
              'Informações',
              style: GoogleFonts.openSans(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 100,
          children: [
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return MensageminicioJogoPage();
                        },
                      ),
                    );
                  },
                  child: Image.asset(
                    'assets/images/IconJogar.png',
                    height: 70,
                    width: 80,
                  ),
                ),
                Text(
                  'Jogar',
                  style: GoogleFonts.openSans(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return ComunidadePage();
                        },
                      ),
                    );
                  },
                  child: Image.asset(
                    'assets/images/IconComunidade.png',
                    width: 80,
                    height: 70,
                  ),
                ),
                Text(
                  'Comunidade',
                  style: GoogleFonts.openSans(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
