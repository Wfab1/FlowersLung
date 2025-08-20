import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class partePulmaoDireitoPage extends StatefulWidget {
  const partePulmaoDireitoPage({super.key});
  @override
  State<partePulmaoDireitoPage> createState() => _partePulmaoDireitoPage();
}


class _partePulmaoDireitoPage extends State<partePulmaoDireitoPage> {
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
                child: Image.asset('assets/images/PartePulmaoDireito.png', height: 250),
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
                        'O pulmão direito é o maior dos dois pulmões e está '
                            'localizado na parte direita do tórax. Ele é dividido '
                            'em três lobos: superior, médio e inferior. Essa '
                            'divisão facilita a organização interna e '
                            'a distribuição do ar. Sua função principal é '
                            'realizar as trocas gasosas, ou seja, absorver o '
                            'oxigênio que respiramos e liberar o gás carbônico que '
                            'é produzido pelo corpo. O tamanho maior do pulmão '
                            'direito ocorre porque ele não precisa dividir espaço '
                            'com o coração, que está mais deslocado para o lado '
                            'esquerdo.',
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
