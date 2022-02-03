import 'package:flutter/material.dart';
import 'package:projectone/model_api/model/modelquick.dart';
import 'package:projectone/model_api/view/productlist.dart';

class Models extends StatefulWidget {
  Models({Key? key}) : super(key: key);
  List<Welcome> products = [
    Welcome(
        productname: 'shoe',
        productid: '12',
        price: '1000',
        status: false,
        img:
            'https://www.berluti.com/dw/image/v2/BBMR_PRD/on/demandware.static/-/Sites-siteCatalog_Berluti_US/default/dw60180154/shoes_category_berluti_new.jpg?sw=371&sh=371&sm=fit',),
    Welcome(
        productname: 'shirt',
        productid: '13',
        price: '500',
        status: true,
        img:
            'https://cdn.ae1stcry.com/brainbees/images/products/438x531/a00aeae5c17d9a.webp',),
    Welcome(
        productname: 'pen',
        productid: 14,
        price: 15,
        status: true,
        img:
            'https://media.istockphoto.com/photos/fountain-pen-picture-id185078634?k=20&m=185078634&s=170667a&w=0&h=OwZb0osl4gAjkoKznhienLUjIJZvC5i7agHBxi21ezw=',),
    Welcome(
        productname: 'Toy',
        productid: 14,
        price: 150,
        status: false,
        img:
            'https://3.imimg.com/data3/IW/QW/MY-3408091/brainbees-images-subcat_42-250x250.jpg',),
  ];
  @override
  ModelsState createState() => ModelsState();
}

class ModelsState extends State<Models> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('e-Commerce'),
        backgroundColor: Colors.deepPurple[300],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ProductList(
            data1: widget.products[index],
          );
        },
        itemCount: widget.products.length,
      ),
    );
  }
}
