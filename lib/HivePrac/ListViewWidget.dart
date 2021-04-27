import 'package:flutter/material.dart';
import 'package:flutter_app1/HivePrac/Product.dart';
import 'package:flutter_app1/HivePrac/SingleProductScreen.dart';
import 'package:hive/hive.dart';

class ListViewWidget extends StatefulWidget {
  final List<dynamic> product;

  ListViewWidget({this.product});

  @override
  _ListViewWidgetState createState() => _ListViewWidgetState();
}

Box singleProduct;

class _ListViewWidgetState extends State<ListViewWidget> {
  double offCalculate(double price, double off) {
    price == null ? price = 0 : price = price;
    (off == null || off == 0) ? off = 1 : off = off / 100;
    return price - (price * off);
  }

  onTap(BuildContext context, Product product) {
    singleProduct = Hive.box("products");

    singleProduct.add(product);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SingleProductScreen(
          product: product,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: widget.product.length,
        itemBuilder: (context, index) {
          return GestureDetector(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      spreadRadius: 1,
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(widget.product[index].mainImageUrl),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 130,
                          child: Text(
                            widget.product[index].name,
                            style: TextStyle(fontWeight: FontWeight.bold),
                            maxLines: 2,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Text(
                          "${widget.product[index].cost == null ? "توافقی" : widget.product[index].cost}",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          widget.product[index].offPercent == null
                              ? ""
                              : "${widget.product[index].offPercent}",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                            "${offCalculate(productInfo[index].cost, widget.product[index].offPercent)}")
                      ],
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.remove_circle_outline,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        singleProduct.delete(widget.product);
                      },
                    )
                  ],
                ),
              ),
              onTap: () => onTap(context, widget.product[index]));
        },
      ),
    );
  }
}
