import 'package:flutter/material.dart';
import 'package:onlineshopayunda/allproductlist.dart';
import 'package:onlineshopayunda/productitem.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 24,
          ),
          onPressed: () {},
        ),
        title: const Text(
          'Home Page',
          style: TextStyle(
              fontSize: 18, color: 
              Colors.white, 
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 92, 87, 71),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_bag_outlined,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            width: 450,
            color: Colors.white,
            height: 150,
            child: Padding(
              padding: const EdgeInsets.all(11),
              child: Row(
                children: [
                  Image.asset(
                    'lib/assets/baner.png',
                    fit: BoxFit.cover,
                    scale: 11,
                    width: 370,
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "Kategori",
              style: TextStyle(
                  color: Colors.brown,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            color: Colors.white,
            height: 110,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 8),
              child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Card(
                    color: Color.fromARGB(255, 254, 219, 184),
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        children: [
                          Image.asset(
                            'lib/assets/icon1.png',
                            scale: 2,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "T-Shirt",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 9,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    color: Color.fromARGB(255, 254, 219, 184),
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        children: [
                          Image.asset(
                            'lib/assets/icon2.png',
                            scale: 2,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Dress",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 9,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                      color: Color.fromARGB(255, 254, 219, 184),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          children: [
                            Image.asset(
                              'lib/assets/icon3.png',
                              scale: 2,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              "Bag",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 9,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      ),
                      Card(
                      color: Color.fromARGB(255, 254, 219, 184),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          children: [
                            Image.asset(
                              'lib/assets/icon4.png',
                              scale: 2,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              "Blush On",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 9,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      ),
                      Card(
                      color: Color.fromARGB(255, 254, 219, 184),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          children: [
                            Image.asset(
                              'lib/assets/icon5.png',
                              scale: 2,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              "Shoes",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 9,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      ),
                      Card(
                      color: Color.fromARGB(255, 254, 219, 184),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          children: [
                            Image.asset(
                              'lib/assets/icon6.png',
                              scale: 2,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              "Watch",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 9,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      ),
                ],
              ),
            ),
          ),
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "Category Pick",
              style: TextStyle(
                  color: Colors.brown,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        Container(
            color: Colors.white,
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AllProduct()),
                    );
                  },
                child: Card(
                  color: Color.fromARGB(255, 92, 87, 71),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Column(
                      children: [
                        Image.asset('lib/assets/keranjang.png', scale: 6),
                        const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Product List",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 9,
                                fontWeight: FontWeight.bold),
                         ),
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProductItem()),
                    );
                  },
                child: Card(
                  color: Color.fromARGB(255, 92, 87, 71),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Column(
                      children: [
                        Image.asset('lib/assets/detail.png', scale: 3),
                        const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Detail",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 9,
                                fontWeight: FontWeight.bold),
                          ),
                      ],
                    ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
