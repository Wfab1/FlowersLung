import 'package:flowerslung/escreverMensagem_page.dart';
import 'package:flutter/material.dart';
import 'package:flowerslung/domain/comunidade.dart';
import 'package:google_fonts/google_fonts.dart';

class CardComunidade extends StatefulWidget {
  Comunidade comunidade;

  CardComunidade({required this.comunidade, super.key});

  @override
  State<CardComunidade> createState() => _CardComunidadeState();
}

class _CardComunidadeState extends State<CardComunidade> {
  Comunidade get comunidade => widget.comunidade;

  @override
  Widget build(BuildContext context) {
    return buildBloco(
      comunidade.titulo,
      comunidade.nomePostador,
      comunidade.dataPost,
      comunidade.mensagem,
      comunidade.nomeComentador,
      comunidade.dataComentario,
      comunidade.comentario,
      Color(0xFFFFF1CC),
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
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Text(nomePostador, style: TextStyle(fontSize: 14)),
                        ],
                      ),
                      Spacer(),
                      Text(dataPost, style: TextStyle(fontSize: 12)),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(mensagem, style: TextStyle(fontSize: 15)),
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
                          Text(nomeComentador, style: TextStyle(fontSize: 14)),
                        ],
                      ),
                      Spacer(),
                      Text(dataComentario, style: TextStyle(fontSize: 12)),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(comentario, style: TextStyle(fontSize: 15)),
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
              //  ElevatedButton(
                   // style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                   // onPressed: () {}, child: Text('')),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return EscreverMensagemPage();
                        },
                      ),
                    );
                  },
                  child: Text(
                    'Clique aqui',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
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
