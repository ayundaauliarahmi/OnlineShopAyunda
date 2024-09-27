import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:onlineshopayunda/allproductlist.dart';
import 'package:http/http.dart' as http;

class UpdateProduct extends StatefulWidget {
  final Map product;
  const UpdateProduct({Key? key, required this.product}) : super(key: key);

  @override
  State<UpdateProduct> createState() => _UpdateProductState();
}

class _UpdateProductState extends State<UpdateProduct> {
  final _id = TextEditingController();
  final _name = TextEditingController();
  final _price = TextEditingController();
  final _description = TextEditingController();
  final _promo = TextEditingController();
  final _images = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Initialize the text controllers with the product data
    _id.text = widget.product['id'] ?? '';
    _name.text = widget.product['name'] ?? '';
    _price.text = widget.product['price'] ?? '';
    _description.text = widget.product['description'] ?? '';
    _promo.text = widget.product['promo'] ?? '';
    _images.text = widget.product['images'] ?? '';
  }

  void clearText() {
    _id.clear();
    _name.clear();
    _price.clear();
    _description.clear();
    _promo.clear();
    _images.clear();
  }

  Future<void> UpdateProduct() async {
    String urlAddProduct =
        'https://ayundaauliarahmi.000webhostapp.com/updateproduct.php';

    try {final responseAdd = await http.post(Uri.parse(urlAddProduct), body: {
        "id": _id.text.toString(),
        "name": _name.text.toString(),
        "price": _price.text.toString(),
        "description": _description.text.toString(),
        "promo": _promo.text.toString(),
        "images": _images.text.toString()
      });
      var addProduct = jsonDecode(responseAdd.body);
      if (addProduct == "true") {
        print("Product successfully updated");
      } else {
        print("Failed to update product. Status code: ${responseAdd.statusCode}");
      }
      } catch (exc) {
        print("Exception during update: $exc");
      
    }
  }

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
          onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AllProduct()),
            );        
            },
        ),
        title: const Text(
          'Update Product',
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
              Icons.notifications,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(50, 20, 30, 10),
              child: TextField(
                controller: _id,
                decoration: InputDecoration(
                  labelText: "Product ID: ",
                  hintText: 'Enter Product ID',
                  prefixIcon: Align(
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: Icon(
                      Icons.people,
                      color: Colors.amber,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 2,
                          style: BorderStyle.solid,
                          color: Colors.green.shade300),
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(50, 0, 30, 10),
              child: TextField(
                controller: _name,
                autocorrect: true,
                decoration: InputDecoration(
                  labelText: "Product Name: ",
                  hintText: "Entry Product Name",
                  labelStyle: TextStyle(
                      color: Colors.brown,
                      fontSize: 15,
                      fontWeight: FontWeight.normal),
                  prefixIcon: Align(
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: Icon(
                      Icons.shopping_bag,
                      color: Colors.amber,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 2,
                          style: BorderStyle.solid,
                          color: Colors.green.shade300),
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(50, 0, 30, 10),
              child: TextField(
                controller: _description,
                autocorrect: true,
                decoration: InputDecoration(
                  labelText: "Description : ",
                  hintText: "Entry Description ",
                  labelStyle: TextStyle(
                      color: Colors.brown,
                      fontSize: 15,
                      fontWeight: FontWeight.normal),
                  prefixIcon: Align(
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: Icon(
                      Icons.add_comment_outlined,
                      color: Colors.amber,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 2,
                          style: BorderStyle.solid,
                          color: Colors.green.shade300),
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(50, 0, 30, 10),
              child: TextField(
                controller: _promo,
                autocorrect: true,
                decoration: InputDecoration(
                  labelText: "Promo: ",
                  hintText: "Entry Promo",
                  labelStyle: TextStyle(
                      color: Colors.brown,
                      fontSize: 15,
                      fontWeight: FontWeight.normal),
                  prefixIcon: Align(
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: Icon(
                      Icons.local_offer,
                      color: Colors.amber,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 2,
                          style: BorderStyle.solid,
                          color: Colors.green.shade300),
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(50, 0, 30, 5),
              child: TextField(
                controller: _images,
                autocorrect: true,
                decoration: InputDecoration(
                  labelText: "Images URL : ",
                  hintText: "Entry URL Images ",
                  labelStyle: TextStyle(
                      color: Colors.brown,
                      fontSize: 15,
                      fontWeight: FontWeight.normal),
                  prefixIcon: Align(
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: Icon(
                      Icons.image,
                      color: Colors.amber,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 2,
                          style: BorderStyle.solid,
                          color: Colors.green.shade300),
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(50, 0, 30, 10),
              child: TextField(
                controller: _price,
                autocorrect: true,
                decoration: InputDecoration(
                  labelText: "Price: ",
                  hintText: "Entry Price ",
                  labelStyle: TextStyle(
                      color: Colors.brown,
                      fontSize: 15,
                      fontWeight: FontWeight.normal),
                  prefixIcon: Align(
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: Icon(
                      Icons.attach_money,
                      color: Colors.amber,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 2,
                          style: BorderStyle.solid,
                          color: Colors.green.shade300),
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(40),
              child: ElevatedButton(
                onPressed: () {
                  UpdateProduct();
                  clearText();
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AllProduct()),
                  ); 
                },
                child: Text(
                  "Update Product",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 92, 87, 71),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}