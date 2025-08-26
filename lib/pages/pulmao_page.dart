import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flowerslung/db/pulmao_dao.dart';
import 'package:flowerslung/domain/pulmao.dart';
import 'package:flowerslung/pages/menuInfo_page.dart';
import 'package:flowerslung/pages/menu_page.dart';
import 'package:flowerslung/pages/pulmao_info_page.dart';

class PulmaoPage extends StatefulWidget {
  const PulmaoPage({super.key});
  @override
  State<PulmaoPage> createState() => _PulmaoPageState();
}

class _PulmaoPageState extends State<PulmaoPage> {
  List<Pulmao> listaPulmao = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    listaPulmao = await PulmaoDao().listarPulmao();
    setState(() {});
  }

  build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF4EEDD),
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
      backgroundColor: const Color(0xFFa54d3b),
      title: Row(
        children: [
          Image.asset(
            'assets/images/PulmaoComFlores.png',
            width: 80,
            height: 80,
          ),
          const SizedBox(width: 30),
          Text(
            'Pulmão',
            style: GoogleFonts.lobster(
              color: const Color(0xFFF4EEDD),
              fontSize: 45,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }

  @override
  buildListView() {
    return Column(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/PulmaoNormal.png', width: 330),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 1; i <= 4; i++) ...[
                    buildNumeroButton(i),
                    const SizedBox(width: 8),
                  ]
                ],
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 5; i <= 8; i++) ...[
                    buildNumeroButton(i),
                    const SizedBox(width: 8),
                  ]
                ],
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFa54d3b),
                    minimumSize: const Size(60, 60)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const MenuPage();
                      },
                    ),
                  );
                },
                child: Text(
                  'Menu Inicial',
                  style: GoogleFonts.openSans(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(width: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFa54d3b),
                    minimumSize: const Size(60, 60)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const MenuInfoPage();
                      },
                    ),
                  );
                },
                child: Text(
                  'Voltar',
                  style: GoogleFonts.openSans(
                    color: Colors.white,
                    fontSize: 22,
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

  Widget buildNumeroButton(int id) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFd3b360),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PulmaoInfoPage(idPulmao: id),
          ),
        );
      },
      child: Text(
        '$id',
        style: GoogleFonts.openSans(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}