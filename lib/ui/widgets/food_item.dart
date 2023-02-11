import 'package:flutter/material.dart';

class FoodItem extends StatelessWidget {
  const FoodItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  'https://media.cnn.com/api/v1/images/stellar/prod/220428140436-04-classic-american-hamburgers.jpg?c=original',
                  height: 50,
                  width: 50,
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text("Hamburger"),
              ),
              Expanded(
                child: Text("x3"),
              ),
              Expanded(
                flex: 3,
                child: Text("with cheese"),
              ),
              Expanded(
                flex: 2,
                child: Text("\$36.99"),
              ),
            ],
          ),
          Divider(
            color: Colors.black.withOpacity(.25),
            thickness: 3,
            height: 3,
          ),
        ],
      ),
    );
  }
}
