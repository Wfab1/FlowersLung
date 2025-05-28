import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PulmaoPage extends StatefulWidget {
  const PulmaoPage({super.key});
  @override
  State<PulmaoPage> createState() => _PulmaoPageState();
}
class _PulmaoPageState extends State<PulmaoPage> {
  @override
  build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF4EEDD),
        appBar: buildAppBar(),
        body: buildListView(),
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
          SizedBox(width: 30),
          Text(
            'Pulmão',
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

  @override
  buildListView() {
    return Column(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/Pulmao.png', width: 330),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      decoration: BoxDecoration(
                        color: Color(0xFFd3b360),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text(
                        '1',
                        style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      decoration: BoxDecoration(
                        color: Color(0xFFd3b360),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text(
                        '2',
                        style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      decoration: BoxDecoration(
                        color: Color(0xFFd3b360),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text(
                        '3',
                        style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      decoration: BoxDecoration(
                        color: Color(0xFFd3b360),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text(
                        '4',
                        style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 12),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      decoration: BoxDecoration(
                        color: Color(0xFFd3b360),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text(
                        '5',
                        style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      decoration: BoxDecoration(
                        color: Color(0xFFd3b360),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text(
                        '6',
                        style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      decoration: BoxDecoration(
                        color: Color(0xFFd3b360),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text(
                        '7',
                        style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      decoration: BoxDecoration(
                        color: Color(0xFFd3b360),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text(
                        '8',
                        style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                decoration: BoxDecoration(
                  color: Color(0xFFa54d3b),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  'Tela Inicial',
                  style: GoogleFonts.openSans(
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
}