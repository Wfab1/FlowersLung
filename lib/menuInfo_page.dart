import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class MenuInfoPage extends StatefulWidget {
  const MenuInfoPage({super.key});
  @override
  State<MenuInfoPage> createState() => _MenuInfoPageState();
}
class _MenuInfoPageState extends State<MenuInfoPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/FundoPulmaoVermelho.jpg'))
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
      actions: [
        Container(
         // child: Image.asset('assets/images/PulmaoComFlores.png', width: 80),
        ),
      ],
      centerTitle: true,
      backgroundColor: Color(0xFFa54d3b),
      title: Text(
        'Informações',
        style: GoogleFonts.lobster(
          color: Color(0xFFF4EEDD),
          fontSize: 45,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }




  buildListView(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          children: [
            SizedBox(height: 48),
            Container(
              width: 900,
              height: 70,
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.all(8),
              child:Text('Pulmão', style: GoogleFonts.adamina(
                  color: Color(0xFFF4EEDD),
                  fontSize: 32,
                  fontWeight: FontWeight.w700),
              ),
              decoration: BoxDecoration(
                  color: Color(0xFFa54d3b),
                  borderRadius: BorderRadius.circular(16),

              ),
            ),
          ],
        ),
        SizedBox(height: 4),
        Column(
          children: [
            SizedBox(height: 4),
            Container(
              width: 900,
              height: 70,
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.all(8),
              child:Text('Sintomas', style: GoogleFonts.adamina(
                  color: Color(0xFFF4EEDD),
                  fontSize: 32,
                  fontWeight: FontWeight.w700),
              ),
              decoration: BoxDecoration(
                  color: Color(0xFFa54d3b),
                  borderRadius: BorderRadius.circular(16)
              ),
            ),
          ],
        ),
        SizedBox(height: 4),
        Column(
          children: [
            SizedBox(height: 4),
            Container(
              width: 900,
              height: 70,
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.all(8),
              child:Text('Tratamento', style: GoogleFonts.adamina(
                  color: Color(0xFFF4EEDD),
                  fontSize: 32,
                  fontWeight: FontWeight.w700),
              ),
              decoration: BoxDecoration(
                  color: Color(0xFFa54d3b),
                  borderRadius: BorderRadius.circular(16)
              ),
            ),
          ],
        ),
        SizedBox(height: 4),
        Column(
          children: [
            SizedBox(height: 4),
            Container(
              width: 900,
              height: 70,
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.all(8),
              child:Text('Apoio', style: GoogleFonts.adamina(
                  color: Color(0xFFF4EEDD),
                  fontSize: 32,
                  fontWeight: FontWeight.w700),
              ),
              decoration: BoxDecoration(
                  color: Color(0xFFa54d3b),
                  borderRadius: BorderRadius.circular(16)
              ),
            ),
          ],
        ),
        SizedBox(height: 80),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,

        ),
      ],
    );
  }
}
