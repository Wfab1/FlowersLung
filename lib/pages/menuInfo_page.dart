import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'infoTratamento_page.dart';
import 'pulmao_page.dart';
import 'InfoApoio_page.dart';
import 'menu_page.dart';
import 'infoSintomas_page.dart';

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
          image: DecorationImage(
            image: AssetImage('assets/images/FundoPulmaoVermelho.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: buildAppBar(),
          body: buildBody(),
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      toolbarHeight: 100,
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

  Widget buildBody() {
    return Column(
      children: [
        Expanded(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 24),
            children: [
              SizedBox(height: 48),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFa54d3b),
                  padding: EdgeInsets.all(16),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return PulmaoPage();
                      },
                    ),
                  );
                },
                child: Container(
                  width: 900,
                  height: 60,
                  alignment: Alignment.center,
                  child: Text(
                    'Pulmão',
                    style: GoogleFonts.adamina(
                      color: Color(0xFFF4EEDD),
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFa54d3b),
                  padding: EdgeInsets.all(16),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return InfoSintomasPage();
                      },
                    ),
                  );
                },
                child: Container(
                  width: 900,
                  height: 60,
                  alignment: Alignment.center,
                  child: Text(
                    'Sintomas',
                    style: GoogleFonts.adamina(
                      color: Color(0xFFF4EEDD),
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFa54d3b),
                  padding: EdgeInsets.all(16),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return InfoTratamentoPage();
                      },
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 60,
                  alignment: Alignment.center,
                  child: Text(
                    'Tratamentos',
                    style: GoogleFonts.adamina(
                      color: Color(0xFFF4EEDD),
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFa54d3b),
                  padding: EdgeInsets.all(16),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return InfoApoioPage();
                      },
                    ),
                  );
                },
                child: Container(
                  width: 900,
                  height: 60,
                  alignment: Alignment.center,
                  child: Text(
                    'Apoio',
                    style: GoogleFonts.adamina(
                      color: Color(0xFFF4EEDD),
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFa54d3b),
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            ),
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
                height: 2,
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ],
    );
  }
}