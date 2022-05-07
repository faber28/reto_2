import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reto_2/models/carmodel.dart';
import 'package:reto_2/models/catalog.dart';
import 'package:reto_2/utils/custom_colors.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: CustomColors.bondWhite,
          appBar: AppBar(
            backgroundColor: CustomColors.bondWhite,
            elevation: 0,
            actions: [
              IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.search_rounded,
                  color: CustomColors.secondary,
                ),
              )
            ],
            title: Row(
              children: [
                Text(
                  "Choose",
                  style: TextStyle(
                    color: CustomColors.secondary,
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
                Text(
                  " a Car",
                  style: TextStyle(
                    color: CustomColors.secondary,
                    fontWeight: FontWeight.w300,
                    fontSize: 32,
                  ),
                ),
              ],
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(children: <Widget>[header(), carList()]),
          )),
    );
  }

  Widget header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Available cars",
          style: TextStyle(
            color: CustomColors.secondary,
            fontWeight: FontWeight.w500,
            fontSize: 24,
          ),
        ),
        Switch(value: false, onChanged: null),
      ],
    );
  }

  Widget carCard(Catalog data, CarModel carData, context) {
    return Card(
        elevation: 10,
        shadowColor: Colors.black26,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        color: Colors.white,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Image(
                    width: 150,
                    image: AssetImage(carData.image),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        carData.brand + " " + carData.line,
                        style: TextStyle(
                          color: CustomColors.secondary,
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        carData.qualification.toString(),
                        style: const TextStyle(
                          color: Colors.black26,
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "\$" + carData.sellingPrice.toString(),
                    style: TextStyle(
                      color: CustomColors.secondary,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                ),
                TextButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(CustomColors.primary),
                      foregroundColor:
                          MaterialStateProperty.all(CustomColors.bondWhite),
                      shape: MaterialStateProperty.all(
                        const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(24),
                            topLeft: Radius.circular(24),
                          ),
                        ),
                      ),
                      fixedSize: MaterialStateProperty.all(
                        const Size.fromHeight(54.0),
                      ),
                    ),
                    onPressed: () {
                      data.setCarSelected(carData);
                      Navigator.pushNamed(context, '/cardetails');
                    },
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(24.0, 0, 24.0, 0),
                      child: Text("Details"),
                    ))
              ],
            )
          ],
        )
        // child: TextButton(
        //   onPressed: () {
        //     Navigator.pushNamed(context, '/cardetails');
        //   },
        //   child: Text(item.getBrand),
        // ),
        );
  }

  Widget carList() {
    return Consumer<Catalog>(builder: ((context, data, child) {
      return Expanded(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              for (var item in data.getCatalog) carCard(data, item, context)
            ],
          ),
        ),
      );
    }));
  }
}
