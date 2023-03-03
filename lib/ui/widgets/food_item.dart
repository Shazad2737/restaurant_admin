import 'package:flutter/material.dart';

class FoodItem extends StatelessWidget {
  const FoodItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 5,
              bottom: 5,
            ),
            child: Row(
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
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 3,
                  child: Text(
                    "Hamburger",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: Text("x3"),
                ),
                Expanded(
                  flex: 3,
                  child: Text(
                    "with cheese",
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text("\$36.99"),
                ),
                Divider(
                  height: 10,
                  thickness: 10,
                  color: Colors.black,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
