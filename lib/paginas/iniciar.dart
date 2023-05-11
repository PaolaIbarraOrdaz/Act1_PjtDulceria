import 'package:flutter/material.dart';

import 'paginaInicio.dart';

class PaginaInicio extends StatefulWidget {
  const PaginaInicio({Key? key}) : super(key: key);

  @override
  State<PaginaInicio> createState() => _StartedPageState();
}

class _StartedPageState extends State<PaginaInicio> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 16,
            ),
            Container(
              height: size.height / 1.8,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Image.asset(
                "assets/fondo_logo.png",
                width: 600,
                height: 180,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Dulcería Alegrías",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      right: 100,
                    ),
                    child: Text(
                      "Encuentra los mejores Dulces Mexicanos aqui.",
                      style: TextStyle(
                        color: Colors.black38,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  InkWell(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Inicio();
                    })),
                    child: Container(
                      height: 56,
                      decoration: BoxDecoration(
                        color: const Color(0xffc80303),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Center(
                        child: Text(
                          "Empezar",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
