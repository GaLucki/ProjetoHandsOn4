import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';


class InitialPage extends StatefulWidget {
  const InitialPage({super.key});
@override
  State<InitialPage> createState() => _InitialPageState();
}     class _InitialPageState extends State<InitialPage> { bool temImagem = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Imagens + StatefulWidget",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
            backgroundColor: const Color.fromRGBO(86, 107, 242, 1),
          ),
          body: Center(
           child: SizedBox(
              child: Column(
               mainAxisAlignment: MainAxisAlignment.start,
                children: [
                 const SizedBox(
                   height: 70,
                  ),
              GestureDetector(
                onTap: trocaImagem,
                child: DottedBorder(
                  color: const Color.fromRGBO(0, 0, 0, 1),
                  dashPattern: const [8, 12],
                  strokeWidth: 1,
                  child: Container(
                    width: 300,
                    height: 325,
                    decoration: BoxDecoration(
                      color: temImagem
                          ? null 
                          : const Color.fromARGB(255, 229, 227, 227),
                      image: temImagem
                          ? const DecorationImage(
                              image: AssetImage('assets/images/imagemTeste.png'), 
                              fit: BoxFit.cover,
                            )
                          : null, 
                    ),
                    child: !temImagem ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: const Icon(
                            Icons.add,
                            size: 30,
                            color: Colors.black,
                            weight: 100,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Adicionar Imagem",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontSize: 20,
                            fontFamily: "Arial",
                          ),
                        )
                      ],
                    ) : null,
                  ),
                ),
              ),
              const SizedBox(
                height: 120,
              ),
              SizedBox(
                width: 300,
                height: 70,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shadowColor: Colors.black,
                      backgroundColor: const Color.fromRGBO(86, 107, 242, 1)),
                  onPressed: () {
                    setState(() {
                      temImagem = false; 
                    });
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(top: 5, bottom: 5),
                    child: Text(
                      "Resetar imagem",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                        fontFamily: "Arial",
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  void trocaImagem() {
    setState(() {
      temImagem = !temImagem;
    });
  }
}
