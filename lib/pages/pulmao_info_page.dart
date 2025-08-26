import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flowerslung/db/pulmao_dao.dart';
import 'package:flowerslung/domain/pulmao.dart';

class PulmaoInfoPage extends StatefulWidget {
  final int idPulmao;
  const PulmaoInfoPage({super.key, required this.idPulmao});

  @override
  State<PulmaoInfoPage> createState() => _PulmaoInfoPageState();
}

class _PulmaoInfoPageState extends State<PulmaoInfoPage> {
  Pulmao? infoPulmao;

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    Pulmao? result = await PulmaoDao().buscarPorId(widget.idPulmao);
    setState(() {
      infoPulmao = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFf4eedd),
        appBar: buildAppBar(),
        body: infoPulmao == null
            ? const Center(child: CircularProgressIndicator())
            : buildContent(),
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
              fontSize: 50,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
  buildContent() {
    Map<int, String> imagens = {
      1: "assets/images/PartePulmaoBronquio.png",
      2: "assets/images/PartePulmaoDireito.png",
      3: "assets/images/PulmaoEsquerdo.png",
      4: "assets/images/PulmaoTraqueia.png",
      5: "assets/images/PulmaoLobos.png",
      6: "assets/images/PulmaoBronquiolos.png",
      7: "assets/images/PulmaoPleura.png",
      8: "assets/images/PulmaoFluidoPleural.png",
    };
    return Column(
      children: [
        Expanded(
          child: Column(
            children: [
              const SizedBox(height: 12),
              Image.asset(imagens[widget.idPulmao] ?? "",
                  height: 250, fit: BoxFit.contain),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color(0xFFD7AE5E),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ListView(
                    children: [
                      Text(
                        infoPulmao?.explicacaoPulmao ?? "",
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
          padding: const EdgeInsets.only(bottom: 16),
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 14),
              decoration: BoxDecoration(
                color: const Color(0xFFa54d3b),
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
          ),
        ),
      ],
    );
  }
}