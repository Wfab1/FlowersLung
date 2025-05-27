import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class InfoSintomasPage extends StatefulWidget {
  const InfoSintomasPage({super.key});
  @override
  State<InfoSintomasPage> createState() => _InfoSintomasPage();
}
class _InfoSintomasPage extends State<InfoSintomasPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFd3b360),
        appBar: buildAppBar(),
        body: buildListView(),
      ),
    );
  }

  buildAppBar() {
    return AppBar(
      toolbarHeight: 100,
      actions: [
        Container(
          //child: Image.asset('assets/images/FundoBegePulmao.jpg', width: 100, height: 100,),
          child: Image.asset('assets/images/PulmaoComFlores.png', width: 80),
        ),
      ],
      centerTitle: false,
      backgroundColor: Color(0xFFf4eedd),
      title: Text(
        'Flowers Lung',
        style: GoogleFonts.lobster(
          color: Color(0xFFE1A100),
          fontSize: 45,
        ),
      ),
    );
  }

  buildListView(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              child: Image.asset('assets/images/IconPulmao.png', width: 80),
              decoration: BoxDecoration(
                  color: Color(0xFFf4eedd),
                  borderRadius: BorderRadius.circular(16)
              ),
            ),
            Text('Informações', style: GoogleFonts.openSans(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.w700),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 64,
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  child: Image.asset('assets/images/IconJogar.png', width: 80),
                  decoration: BoxDecoration(
                      color: Color(0xFFf4eedd),
                      borderRadius: BorderRadius.circular(16)
                  ),
                ),
                Text('Jogar', style: GoogleFonts.openSans(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  child: Image.asset('assets/images/IconComunidade.png', width: 80),
                  decoration: BoxDecoration(
                      color: Color(0xFFf4eedd),
                      borderRadius: BorderRadius.circular(16)
                  ),
                ),
                Text('Comunidade', style: GoogleFonts.openSans(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}