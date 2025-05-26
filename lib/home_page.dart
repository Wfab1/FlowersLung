import 'package:flutter/material.dart';

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
        //appBar: buildAppBar(),
        body: buildListview(),
      ),
    );
  }

  buildListview() {
    return ListView(
      children: [
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 100),
              Text('Flowers Lung', style: TextStyle(
                fontSize: 50,
              ),),
              SizedBox(height: 40),
              Image.asset('assets/images/PulmaoComFlores.png', width: 340),
            ],
          ),
        ),
      ],
    );
  }
}