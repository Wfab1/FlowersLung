import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});


  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFf4eedd),
        body: buildContent(),
      ),
    );
  }


  Widget buildContent() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Flowers Lung',
            style: GoogleFonts.lobster(
              color: Colors.black,
              fontSize: 70,
            ),
          ),
          SizedBox(),
          Image.asset(
            'assets/images/PulmaoComFlores.png',
            width: 320,
          ),
          SizedBox(),
          ElevatedButton(
            onPressed: () {
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFD7AE5E),
              padding:EdgeInsets.symmetric(horizontal: 40, vertical: 14),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              elevation: 3,
            ),
            child: Text('Entrar', style: GoogleFonts.openSans(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
            ),
          ),
        ],
      ),
    );
  }
}
