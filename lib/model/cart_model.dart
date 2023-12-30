import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // list of items 
  final List _shopItems = const [
    // [ itemName, itemPrice, imagePath, color ]
    ["Apple", "1.36", "lib/images/Apple.jpg", Color.fromARGB(255, 224, 43, 11)],
    ["Banana", "2.84", "lib/images/Banana.jpg", Colors.yellow],
    ["Grape", "0.25", "lib/images/Grape.jpg", Colors.lightGreen],
    ["Orange", "1.21", "lib/images/Orange.jpg", Colors.orange],
    ["Mango", "2.34", "lib/images/Mango.jpg", Colors.yellowAccent],
    ["Pomegranate", "1.70", "lib/images/Pomegranate.jpg", Colors.pink],
    ["Beans", "0.84", "lib/images/Beans.jpg", Colors.green],
    ["Cabbage", "1.34", "lib/images/Cabbage.jpg", Colors.greenAccent],
    ["Carrots", "2.00", "lib/images/Carrots.jpg", Colors.orangeAccent],
    ["Cauliflower", "2.36", "lib/images/Cauliflower.jpg", Color.fromARGB(255, 219, 200, 179)],
    ["Potato", "1.25", "lib/images/Potato.jpg", Color.fromARGB(255, 189, 182, 119)],
    ["Tomato", "3.00", "lib/images/Tomato.jpg", Colors.redAccent],
  ];

  // list of cart items
  List _cartItems = [];

  //getter method
  get cartItems => _cartItems;

  get shopItems => _shopItems;

  // add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < cartItems.length; i++) {
      totalPrice += double.parse(cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}