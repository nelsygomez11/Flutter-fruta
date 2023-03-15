import 'package:flutter/material.dart';
import 'package:fruta/widgets/HomeBottomBar.dart';
import 'package:fruta/widgets/HomePagePosts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (int i = 1; i < 4; i++)
                  Image(
                    image: AssetImage('assets/fondo$i.jpg'),
                    height: 250,
                    fit: BoxFit.cover,
                  ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 5,
                ),
              ],
            ),
            child: GridView.count(
              crossAxisCount: 4,
              childAspectRatio: 1,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              shrinkWrap: true,
              children: [
                for (int i = 1; i < 9; i++)
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 253, 230, 177),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Image.asset(
                      'assets/$i.png',
                      fit: BoxFit.cover,
                    ),
                  ),
              ],
            ),
          ),
          HomePagePosts(),
        ],
      ),
      bottomNavigationBar: HomeBottomBar(),
    );
  }
}
