import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class ComunidadePage extends StatefulWidget {
  const ComunidadePage({super.key});
  @override
  State<ComunidadePage> createState() => _ComunidadePageState();
}
class _ComunidadePageState extends State<ComunidadePage> {
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
  buildListView() {
    return ListView(
      padding: EdgeInsets.all(16),
      children: [
        SizedBox(height: 20),
        buildBloco(
          'Luta contra o cigarro',
          'Anny Beatriz',
          '01/01/2025',
          'Desenvolvi câncer de pulmão por fumar desde os 11 anos e estou tentando me livrar desse vício.',
          'Wanessa Fernanda',
          '02/01/2025',
          'Oi, Anny! Estou passando pela mesma situação que você. Estão sendo dias difíceis.',
          Color(0xFFFFF1CC),
        ),
        buildBloco(
          'Cada dia é um desafio',
          'Francyele Dias',
          '05/01/2025',
          'Cada dia é um desafio, mas estou buscando apoio na comunidade para continuar firme.',
          'Maria Vitória',
          '06/01/2025',
          'Continue firme, Francyele! Você está inspirando outras pessoas com sua coragem.',
          Color(0xFFFFF1CC),
        ),
        buildBloco(
          'Recaídas acontecem',
          'Maria Silva',
          '10/01/2025',
          'Infelizmente tive uma recaída essa semana. Mas estou determinada a continuar tentando.',
          'José Santos',
          '11/01/2025',
          'Não desista, Maria! O importante é continuar tentando.',
          Color(0xFFFFF1CC),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
              decoration: BoxDecoration(
                color: Color(0xFFa54d3b),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                'Escrever',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(width: 30),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
              decoration: BoxDecoration(
                color: Color(0xFFa54d3b),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                'Voltar',
                style: TextStyle(
                  color: Colors.white,
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
  buildBloco(
      String titulo,
      String nomePostador,
      String dataPost,
      String mensagem,
      String nomeComentador,
      String dataComentario,
      String comentario,
      Color corFundo,
      ) {
    return Card(
      margin: EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0XFFf1d684),
                borderRadius: BorderRadius.circular(12),
              ),
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.account_circle, size: 32),
                      SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            titulo,
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Text(
                            nomePostador,
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                      Spacer(),
                      Text(
                        dataPost,
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    mensagem,
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12),
            Container(
              margin: EdgeInsets.only(left: 40),
              decoration: BoxDecoration(
                color: Color(0XFFf1d684),
                borderRadius: BorderRadius.circular(12),
              ),
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.account_circle, size: 24),
                      SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Comentário',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            nomeComentador,
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                      Spacer(),
                      Text(
                        dataComentario,
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    comentario,
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Deseja fazer um comentário? ',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  'Clique aqui',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
