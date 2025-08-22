import 'package:flowerslung/db/comunidade_dao.dart';
import 'package:flowerslung/domain/comunidade.dart';
import 'package:flowerslung/escreverMensagem_page.dart';
import 'package:flowerslung/widgets/cardComunidade_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flowerslung/pages/menu_page.dart';

class ComunidadePage extends StatefulWidget {
  const ComunidadePage({super.key});

  @override
  State<ComunidadePage> createState() => _ComunidadePageState();
}

class _ComunidadePageState extends State<ComunidadePage> {
  List<Comunidade> listaComunidade = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    listaComunidade = await ComunidadeDao().listarComunidade();
    setState(() {});
  }

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
          body: buildListView() ,
        ),
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
          itemCount: listaComunidade.length,
          itemBuilder: (context, i) {
            return CardComunidade(comunidade: listaComunidade[i]);
          },
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(style:
            ElevatedButton.styleFrom(
                backgroundColor:Color(0xFFa54d3b)),
              onPressed:(){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                        builder: (context) {
                        return EscreverMensagemPage();
                      },
                    ),
                );
              }, child: Text('Escrever',
            style: TextStyle(
            color: Colors.white,
                fontSize: 23,
                fontWeight: FontWeight.w700,)
                )
            ),
            SizedBox(width: 30),
            ElevatedButton(style:
            ElevatedButton.styleFrom(backgroundColor:Color(0xFFa54d3b)),
                onPressed: (){
                  Navigator.push(
                        context,
                        MaterialPageRoute(
                        builder: (context) {
                        return MenuPage();
                     },
              )
            );
            }, child: Text('Voltar',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.w700,)
            )
            )
          ],
        ),
        SizedBox(height: 30),
      ],
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
          SizedBox(width: 10),
          Text(
            'Comunidade',
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
}
