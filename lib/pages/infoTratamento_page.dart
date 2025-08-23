import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flowerslung/widgets/cardTratamento_page.dart';
import 'package:flowerslung/domain/tratamento.dart';
import 'package:flowerslung/db/tratamento_dao.dart';
import 'menuInfo_page.dart';
import 'menu_page.dart';

class InfoTratamentoPage extends StatefulWidget {
  const InfoTratamentoPage({super.key});
  @override
  State<InfoTratamentoPage> createState() => _InfoTratamentoPage();
}

class _InfoTratamentoPage extends State<InfoTratamentoPage> {
  List<Tratamento> listaTratamento = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    listaTratamento = await TratamentoDao().listarTratamento();
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
          SizedBox(width: 30),
          Text(
            'Tratamento',
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
      children: [
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.all(5),
                child: Image.asset(
                  'assets/images/Medica.png',
                  height: 225,
                  fit: BoxFit.contain,
                ),
              ),

              Expanded(
                child: Container(
                  padding: EdgeInsets.all(16),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ListView.builder(
                    itemCount: listaTratamento.length,
                    itemBuilder: (context, i) {
                      return CardTratamento(
                        tratamento: listaTratamento[i],
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
