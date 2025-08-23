import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path/path.dart';
import 'package:flowerslung/pages/comunidade_page.dart';

class EscreverMensagemPage extends StatefulWidget {
  const EscreverMensagemPage({super.key});
  @override
  State<EscreverMensagemPage> createState() => _EscreverMensagemPage();
}

class _EscreverMensagemPage extends State<EscreverMensagemPage> {
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
}

buildAppBar() {
  return AppBar(
    automaticallyImplyLeading: false,
    toolbarHeight: 150,
    backgroundColor: Color(0xFFd3b360),
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Image.asset('assets/images/PulmaoComFlores.png', width: 50),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Text(
              'Escreva uma mensagem',
              style: GoogleFonts.lobster(
                color: Colors.black,
                fontSize: 36,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

buildListView() {
  return Column(
    children: [
      Expanded(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          children: [
            SizedBox(height: 30),
            buildTextField('Seu nome'),
            SizedBox(height: 30),
            buildTextField('Sua senha', obscureText: true),
            SizedBox(height: 30),
            buildTextField('Título'),
            SizedBox(height: 30),
            buildTextField('Mensagem', maxLines: 4),
            SizedBox(height: 40),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.only(bottom: 45),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFd3b360),
              ),
              onPressed: () {
                //Navigator.push(
                 // context as BuildContext,
                  //MaterialPageRoute(
                   // builder: (context) {
                    //  return ComunidadePage();
                   // },
                  //),
                //);
              },
              child: Text(
                'Enviar',
                style: GoogleFonts.openSans(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(width: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFd3b360),
              ),
              onPressed: () {
               // Navigator.push(
                 // context as BuildContext,
                 // MaterialPageRoute(
                 //   builder: (context) {
                   //   return ComunidadePage();
                   // },
                 // ),
                //);
              },
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

buildTextField(String label, {bool obscureText = false, int maxLines = 1}) {
  return TextField(
    obscureText: obscureText,
    maxLines: maxLines,
    decoration: InputDecoration(
      labelText: label,
      floatingLabelBehavior: FloatingLabelBehavior.always,
      labelStyle: GoogleFonts.openSans(
        fontSize: 30,
        color: Colors.black,
        fontWeight: FontWeight.w700,
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(color: Color(0xFFd3b360)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(color: Color(0xFFd3b360), width: 2),
      ),
    ),
  );
}
