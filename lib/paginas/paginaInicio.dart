import 'package:flutter/material.dart';

import '../widgets/dulceria_item.dart';
import '../widgets/empleados_item.dart';

class Inicio extends StatefulWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  State<Inicio> createState() => _HomePageState();
}

class _HomePageState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 24,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Colors.black54,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_month_outlined,
              color: Colors.black54,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat_bubble_outline,
              color: Colors.black54,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_none_outlined,
              color: Colors.black54,
            ),
            label: '',
          ),
        ],
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Dulcería Alegrías'),
        backgroundColor: const Color(0xffb80303),
        actions: const [Icon(Icons.search), Icon(Icons.more_vert)],
        elevation: 8,
      ),
      body: ListView(
        children: [
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Hola,",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Paola Ibarra",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  )
                ],
              ),
              const CircleAvatar(
                radius: 30,
                backgroundColor: Colors.grey,
                child: CircleAvatar(
                  radius: 28,
                  backgroundImage: AssetImage("assets/user1.jpg"),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
            decoration: BoxDecoration(
              color: const Color(0xffd5d5d5),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  "assets/empleado.png",
                  width: 92,
                  height: 100,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "¿Qué vas a pedir?",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const SizedBox(
                      width: 120,
                      child: Text(
                        "Increible atención al cliente.",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 150,
                      height: 35,
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          color: const Color(0xffa90303),
                          borderRadius: BorderRadius.circular(12.0)),
                      child: const Center(
                        child: Text(
                          "Empezar",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.only(left: 16),
            height: 64,
            decoration: BoxDecoration(
              color: const Color.fromARGB(95, 179, 173, 173),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: const [
                Icon(
                  Icons.search,
                  size: 32,
                  color: Colors.black54,
                ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  "¿Cómo puedo ayudarte?",
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 60,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                AnuncioItem(
                  imagePath: "assets/anuncio1.png",
                  imageName: "Anuncio",
                ),
                SizedBox(
                  width: 8,
                ),
                AnuncioItem(
                  imagePath: "assets/anuncio2.png",
                  imageName: "Anuncio",
                ),
                SizedBox(
                  width: 8,
                ),
                AnuncioItem(
                  imagePath: "assets/anuncio3.png",
                  imageName: "Anuncio",
                ),
                SizedBox(
                  width: 8,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Lista de empleados",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text(
                "Ver Todo",
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                EmpleadoItem(
                  image: "assets/1.jpg",
                  name: "Nycta Gina",
                  specialist: "Vendedora",
                ),
                EmpleadoItem(
                  image: "assets/3.jpg",
                  name: "Reisa Broto ",
                  specialist: "Cajera",
                ),
                EmpleadoItem(
                  image: "assets/2.jpg",
                  name: "Indah Kusumaningrum",
                  specialist: "Repartidora",
                ),
                EmpleadoItem(
                  image: "assets/4.jpg",
                  name: "Mesty Ariotedjo",
                  specialist: "Vendedora",
                ),
              ],
            ),
          )
        ],
        // ),
        //),
      ),
    );
  }
}
