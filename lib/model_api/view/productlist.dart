import 'package:flutter/material.dart';
import 'package:projectone/model_api/model/modelquick.dart';

class ProductList extends StatefulWidget {
  ProductList({Key? key, required this.data1}) : super(key: key);
  Welcome data1;
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) { 
    return Center(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        color: Colors.deepPurple[300],
        margin: const EdgeInsets.all(15),
        child: InkWell(
          child: ListTile(
            leading: Image.network(
              widget.data1.img.toString(),
              width: 40,
              height: 50,
            ),
            title: Text(widget.data1.productname.toString()),
            subtitle: Text('Product Id: ${widget.data1.productid}'),
            trailing: Text('RS: ${widget.data1.price}'),
            onTap: () {},
          ),
        ),
      ),
    );
    //testing
  }
}
