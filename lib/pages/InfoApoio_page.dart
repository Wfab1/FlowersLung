import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flowerslung/widgets/cardApoio_page.dart';
import 'package:flowerslung/domain/apoio.dart';
import 'package:flowerslung/db/apoio_dao.dart';
import 'menuInfo_page.dart';
import 'menu_page.dart';

class InfoApoioPage extends StatefulWidget {
  const InfoApoioPage({super.key});
  @override
  State<InfoApoioPage> createState() => _InfoApoioPage();
}

class _InfoApoioPage extends State<InfoApoioPage> {
  List<Apoio> listaApoio = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    listaApoio = await ApoioDao().listarApoio();
    setState(() {});
  }

  @override
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
      automaticallyImplyLeading: false,
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
          SizedBox(width: 40),
          Text(
            'Apoio',
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

  Widget buildListView() {
    return Column(
      children: [
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: Image.asset(
                  'assets/images/ApoioMeninasAbracadas.png',
                  height: 225,
                  fit: BoxFit.contain,
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xFFD7AE5E),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ListView.builder(
                    itemCount: listaApoio.length,
                    itemBuilder: (context, i) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: Text(
                          listaApoio[i].texto,
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.adamina(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Color(0xFFa54d3b)),
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
                style: TextStyle(
                  color: Colors.white,
                  height: 3,
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(width: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Color(0xFFa54d3b)),
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
                'Voltar',
                style: TextStyle(
                  color: Colors.white,
                  height: 3,
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),

        SizedBox(height: 30),
      ],
    );
  }
}