import 'package:flutter/material.dart';

class CartItemSamples extends StatefulWidget {
  @override
  State<CartItemSamples> createState() => _CartPageStateState();
}

class _CartPageStateState extends State<CartItemSamples> {
  bool checkedValue = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 1; i < 4; i++)
          Container(
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 12),
            child: Row(
              children: [
                Checkbox(
                  activeColor: Color(0xFFF7CA0F),
                  value: checkedValue,
                  onChanged: (newValue) {
                    setState(() {
                      checkedValue = newValue!;
                    });
                  },
                ),
                Container(
                  height: 70,
                  width: 70,
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.only(left: 5),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 230, 177),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 8,
                      ),
                    ],
                  ),
                  child: Image.asset(
                    'assets/1.png',
                    fit: BoxFit.contain,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      Text(
                        "Item Name",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(162, 0, 0, 0),
                        ),
                      ),
                      SizedBox(height: 12),
                      Row(
                        children: [
                          Text(
                            "\$50",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFFFB608),
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "/ 5KG",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.delete,
                      color: Colors.redAccent,
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          height: 25,
                          width: 25,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 72, 164, 152),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            "-",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "01",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(162, 0, 0, 0),
                            ),
                          ),
                        ),
                        Container(
                          height: 25,
                          width: 25,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 71, 135, 133),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            "+",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
      ],
    );
  }
}
