import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class partePulmaoLobosPage extends StatefulWidget {
  const partePulmaoLobosPage({super.key});
  @override
  State<partePulmaoLobosPage> createState() => _partePulmaoLobosPage();
}


class _partePulmaoLobosPage extends State<partePulmaoLobosPage> {
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
                child: Image.asset('assets/images/PulmaoLobos.png', height: 250),
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
                        'Os lobos são as divisões anatômicas dos pulmões. O '
                            'pulmão direito tem três lobos (superior, médio e '
                            'inferior), enquanto o esquerdo tem dois (superior e '
                            'inferior). Essa divisão torna possível a organização '
                            'funcional do pulmão, permitindo que cada lobo receba seu '
                            'próprio suprimento de ar e sangue. Em algumas doenças, a '
                            'separação por lobos permite que uma área afetada seja '
                            'tratada ou retirada sem comprometer todo o órgão.',
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
