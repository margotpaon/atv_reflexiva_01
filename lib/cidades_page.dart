import 'package:flutter/material.dart';

class CidadesPage extends StatelessWidget {
  final cidades = [
    "Curitiba",
    "Londrina",
    "Maringá",
    "Ponta Grossa",
    "Cascavel",
    "São José dos Pinhais",
    "Foz do Iguaçu",
    "Colombo",
    "Guarapuava",
    "Paranaguá",
    "Araucária",
    "Toledo",
    "Apucarana",
    "Campo Largo",
    "Pinhais",
    "Arapongas",
    "Almirante Tamandaré",
    "Piraquara",
    "Umuarama",
    "Cambé"
  ];

  final population = [
    "1.963.726",
    "580.870",
    "436.472",
    "358.838",
    "336.073",
    "334.620",
    "257.971",
    "249.277",
    "183.755",
    "157.378",
    "148.522",
    "144.601",
    "137.438",
    "135.678",
    "134.788",
    "126.545",
    "121.420",
    "116.852",
    "113.416",
    "108.126"
  ];

  final bandeira = [
    "asserts/images/curitiba.png",
    "asserts/images/londrina.png",
    "asserts/images/maringa.png",
    "asserts/images/ponta_grossa.png",
    "asserts/images/cascavel.jpg",
    "asserts/images/sjp.png",
    "asserts/images/foz.png",
    "asserts/images/colombo.png",
    "asserts/images/guarapuava.jpeg",
    "asserts/images/paranagua.png",
    "asserts/images/araucaia.jpg",
    "asserts/images/toledo.jpg",
    "asserts/images/apucarana.jpg",
    "asserts/images/campo-largo.png",
    "asserts/images/pinhais.jpg",
    "asserts/images/arapongas.png",
    "asserts/images/almirante_tamandare.jpg",
    "asserts/images/piraquara.png",
    "asserts/images/umuarama.png",
    "asserts/images/cambe.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: cidades.length,
          itemBuilder: (_, index) => Table(
                children: [
                  TableRow(children: [
                    Container(
                      width: 30,
                      child: Text('$index'),
                    ),
                    Row(children: [
                      Image.asset(
                        bandeira.elementAt(index),
                        width: 30,
                        height: 30,
                      ),
                      Text(cidades.elementAt(index))
                    ]),
                    Text(population.elementAt(index))
                  ])
                ],
              )),
    );
  }
}
