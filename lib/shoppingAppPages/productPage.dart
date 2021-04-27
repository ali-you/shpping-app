import 'package:flutter/material.dart';
import 'package:flutter_app1/models/productModel.dart';

class ProductPage extends StatefulWidget {
  final ProductModel productModel;

  ProductPage({this.productModel});

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  addCounter() {
    setState(() {
      ++widget.productModel.counter;
    });
  }

  removeCounter() {
    setState(() {
      if (widget.productModel.counter > 0) --widget.productModel.counter;
    });
  }

  int selectedPic = 0;

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
                            Navigator.pop(context, widget.productModel);
                          }),
                      SizedBox(
                        height: 320,
                        width: MediaQuery.of(context).size.width / 4,
                        child: ListView.builder(
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedPic = index;
                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          boxShadow: [
                                            selectedPic == index
                                                ? BoxShadow(
                                                    color:
                                                        Colors.deepOrangeAccent,
                                                    spreadRadius: 2,
                                                  )
                                                : BoxShadow(color: Colors.white)
                                          ]),
                                      margin: EdgeInsets.all(10),
                                      width: 80,
                                      height: 80,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(15),
                                        child: Image.network(
                                          widget.productModel.imageUrl[index],
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            }),
                      ),
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
                        widget.productModel.imageUrl[selectedPic],
                        fit: BoxFit.cover,
                        width: 280,
                        height: MediaQuery.of(context).size.height / 2,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: widget.productModel.liked == false
                            ? IconButton(
                                icon: Icon(Icons.favorite_outline),
                                onPressed: () {
                                  setState(() {
                                    widget.productModel.liked = true;
                                  });
                                })
                            : IconButton(
                                icon: Icon(
                                  Icons.favorite,
                                  color: Colors.redAccent,
                                ),
                                onPressed: () {
                                  setState(() {
                                    widget.productModel.liked = false;
                                  });
                                }),
                      )
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
                    widget.productModel.name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  SizedBox(height: 15),
                  Text(
                    widget.productModel.price,
                    style: TextStyle(
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SizedBox(height: 15),
                  Text(widget.productModel.description),
                ],
              ),
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                height: 80,
                child: widget.productModel.counter == 0
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
                              "  ${widget.productModel.counter}  ",
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
