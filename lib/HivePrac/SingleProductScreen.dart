import 'package:flutter/material.dart';
import 'package:flutter_app1/HivePrac/Product.dart';

class SingleProductScreen extends StatefulWidget {

  final Product product;
  final double finalPrice;

  SingleProductScreen({this.product, this.finalPrice});


  @override
  _SingleProductScreenState createState() => _SingleProductScreenState();
}

class _SingleProductScreenState extends State<SingleProductScreen> {

  addCounter() {
    setState(() {
      ++widget.product.counter;
    });
  }

  removeCounter() {
    setState(() {
      if (widget.product.counter > 0) --widget.product.counter;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                          icon: Icon(Icons.arrow_back_ios_rounded),
                          onPressed: () {
                            // widget.productModel.counter = counter;
                            Navigator.pop(context);
                          }),
                    ],
                  ),
                ),
                ClipRRect(
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(30)),
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Image.network(
                        widget.product.mainImageUrl,
                        fit: BoxFit.cover,
                        width: 280,
                        height: MediaQuery.of(context).size.height / 2,
                      ),
                    ],
                  ),
                ),

                // Card(child: Icon(Icons.favorite_outline, size: 50,),),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.product.name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "${widget.product.cost}",
                    style: TextStyle(
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SizedBox(height: 15),
                  Text("${widget.product.offPercent}"),
                ],
              ),
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                height: 80,
                child: widget.product.counter == 0
                    ? Center(
                        child: GestureDetector(
                          onTap: addCounter,
                          child: Container(
                              margin: EdgeInsets.all(10),
                              width: MediaQuery.of(context).size.width,
                              height: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.deepOrange),
                              child: Center(
                                  child: Text(
                                "Add to cart",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ))),
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              child: Card(
                                child: Icon(
                                  Icons.remove,
                                  size: 40,
                                ),
                                color: Colors.white70,
                              ),
                              onTap: () {
                                removeCounter();
                              },
                            ),
                            Text(
                              "  ${widget.product.counter}  ",
                              style: TextStyle(fontSize: 30),
                            ),
                            GestureDetector(
                              child: Card(
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 40,
                                ),
                                color: Colors.deepOrangeAccent,
                              ),
                              onTap: () {
                                addCounter();
                              },
                            ),
                          ],
                        ),
                      )),
          ],
        ),
      ),
    );
  }
}
