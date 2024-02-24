// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_screen/Pestanas/Home.dart';
import 'package:google_screen/Pestanas/Data.dart';
import 'package:google_screen/Pestanas/InformacionPersonal.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: AppBar(
            elevation: 0,
            title: const Padding(
              padding: EdgeInsets.only(top: 15),
              child: Row(
                children: [
                  Icon(
                    Icons.close,
                    color: Colors.black,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Cuenta de ",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  Text(
                    "Google",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            actions: const [
              Padding(
                padding: EdgeInsets.only(top: 12, right: 20),
                child: Icon(
                  Icons.help_outline,
                  size: 28,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 12, right: 10),
                child: Icon(
                  Icons.search,
                  size: 28,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 12, right: 10),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/Imagenes/profilepicture.jpg'),
                  radius: 14,
                ),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              color: const Color.fromARGB(255, 177, 177, 180),
              child: TabBar(
                indicatorColor: Colors.blue, // Cambio de color a azul
                indicatorWeight: 4,
                labelStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue), // Cambio de color a azul
                onTap: (index) {
                  setState(() {});
                },
                tabs: const [
                  Tab(
                    text: "Página Principal",
                  ),
                  Tab(
                    text: "Información Personal",
                  ),
                  Tab(
                    text: "Datos y Privacidad",
                  ),
                ],
              ),
            ),
            const Flexible(
              flex: 1,
              child: TabBarView(
                children: [
                  Home(),
                  InformacionPersonal(),
                  Data(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}