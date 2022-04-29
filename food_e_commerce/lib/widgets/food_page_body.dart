import 'package:flutter/material.dart';

class FoodPageBodyWidget extends StatefulWidget {
  const FoodPageBodyWidget({Key? key}) : super(key: key);

  @override
  State<FoodPageBodyWidget> createState() => _FoodPageBodyWidgetState();
}

class _FoodPageBodyWidgetState extends State<FoodPageBodyWidget> {
  var pageController = PageController(viewportFraction: 0.7);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: MediaQuery.of(context).size.height * 0.3,
      child: PageView.builder(
        controller: pageController,
        itemCount: 5,
        itemBuilder: ((context, index) {
          return _listaItemsPagina(index);
        }),
      ),
    );
  }

  Widget _listaItemsPagina(int index) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.25,
          margin: const EdgeInsets.only(left: 5, right: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: index.isEven ? Colors.black : Colors.amber,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/img/food${index}.jpg"),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.15,
            margin: const EdgeInsets.only(left: 40, right: 40, bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
