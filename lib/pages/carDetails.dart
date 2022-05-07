import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:reto_2/models/catalog.dart';
import 'package:reto_2/models/carmodel.dart';
import 'package:reto_2/services/carstate.dart';

class CarDetails extends StatelessWidget {

  int id = 0;
  
  CarDetails({Key? key, id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.indigo[900],
            leading: const BackButton(
              color: Colors.white,
            ),
            elevation: 0,
          ),
          body: bodyPage()),
    );
  }

  Widget bodyPage() {
    return Consumer<Catalog>(builder: (context, catalog, child) {
      return Column(children: <Widget>[
        Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
            color: Colors.indigo[900],
          ),
          height: 350,
          width: double.infinity,
          child: Column(children: <Widget>[
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                        catalog.getCarSelected.brand +
                            ", (${catalog.getCarSelected.line})",
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  ),
                  Row(children: <Widget>[
                    const Icon(
                      Icons.star,
                      color: Colors.orange,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                          catalog.getCarSelected.qualification.toString(),
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                    ),
                  ])
                ]),
            Image(image: AssetImage(catalog.getCarSelected.image))
          ]),
        ),
        qualification(catalog, id),
        description(catalog.getCarSelected.description,
            catalog.getCarSelected.sellingPrice),
      ]);
    });
  }

  Widget qualification(Catalog catalog, int id) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: <Widget>[
          const Text("Calificación",
              style: TextStyle(
                  color: Colors.indigo,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          Padding(
            padding: const EdgeInsets.all(3),
            child: IconButton(
                onPressed: () {
                  catalog.getCarSelected.setQualification(1.0);
                },
                icon: catalog.getCarSelected.qualification > 0.1
                    ? const Icon(Icons.star)
                    : const Icon(Icons.star_border),
                color: Colors.orange),
          ),
          Padding(
            padding: const EdgeInsets.all(3),
            child: IconButton(
                onPressed: () {
                  catalog.getCarSelected.setQualification(2);
                },
                icon: catalog.getCarSelected.qualification > 1.9
                    ? const Icon(Icons.star)
                    : const Icon(Icons.star_border),
                color: Colors.orange),
          ),
          Padding(
            padding: const EdgeInsets.all(3),
            child: IconButton(
                onPressed: () {
                  catalog.getCarSelected.setQualification(3);
                },
                icon: catalog.getCarSelected.qualification > 2.9
                    ? const Icon(Icons.star)
                    : const Icon(Icons.star_border),
                color: Colors.orange),
          ),
          Padding(
            padding: const EdgeInsets.all(3),
            child: IconButton(
                onPressed: () {
                  catalog.getCarSelected.setQualification(4);
                },
                icon: catalog.getCarSelected.qualification > 3.9
                    ? const Icon(Icons.star)
                    : const Icon(Icons.star_border),
                color: Colors.orange),
          ),
          Padding(
            padding: const EdgeInsets.all(3),
            child: IconButton(
                onPressed: () {
                  catalog.getCarSelected.setQualification(5);
                },
                icon: catalog.getCarSelected.qualification > 4.9
                    ? const Icon(Icons.star)
                    : const Icon(Icons.star_border),
                color: Colors.orange),
          ),
        ],
      ),
    );
  }

  Widget description(String description, double price) {
    return Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
            Widget>[
          const Text("Descripción",
              style: TextStyle(
                  color: Colors.indigo,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          Text("\n" + description,
              textAlign: TextAlign.justify,
              style: const TextStyle(fontSize: 18)),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("\$" + NumberFormat("###,###.##", "es_US").format(price),
                      style: const TextStyle(
                          color: Colors.indigo,
                          fontSize: 25,
                          fontWeight: FontWeight.bold)),
                  TextButton(
                    onPressed: () {
                      print("pressed");
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Colors.indigo[900],
                      ),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                    child:
                        const Text("Comprar", style: TextStyle(fontSize: 20)),
                  )
                ]),
          )
        ]));
  }
}
