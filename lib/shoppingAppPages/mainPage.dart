import 'package:flutter/material.dart';
import 'package:flutter_app1/models/categoryModel.dart';
import 'package:flutter_app1/models/productModel.dart';
import 'package:flutter_app1/shoppingAppPages/productPage.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  double heightList = 350;
  double widthList = 200;
  int categoryIndex = 0;

  checkLike() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    categoryInfo[categoryIndex].selected = true;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, right: 10, left: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Best Furniture",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.deepOrange),
                    ),
                    Text(
                      "Perfect Choice!",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(5.0),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 10,
                            spreadRadius: 1)
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Icon(Icons.shopping_bag_outlined),
                )
              ],
            ),

            // SizedBox(height: 60,),

            SizedBox(
              height: 150,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categoryInfo.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            categoryIndex = index;
                            setState(() {
                              categoryInfo.forEach((element) {
                                element.selected = false;
                              });
                              categoryInfo[index].selected = true;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.all(15),
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: categoryInfo[index].selected == true
                                    ? Colors.deepOrangeAccent
                                    : Colors.white),
                            child: Icon(
                              categoryInfo[index].icon,
                              color: categoryInfo[index].selected == true
                                  ? Colors.white
                                  : Colors.grey,
                            ),
                          ),
                        ),
                        Text(categoryInfo[index].name)
                      ],
                    );
                  }),
            ),

            SizedBox(
              height: 380,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categoryInfo[categoryIndex].productsList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        navigationBack(context,
                            categoryInfo[categoryIndex].productsList[index]);
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        width: widthList,
                        height: heightList,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white70,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 10,
                                  spreadRadius: 1)
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(10),
                                  width: widthList,
                                  height: heightList / 2,
                                  child: ClipRRect(
                                    child: Image.network(
                                      categoryInfo[categoryIndex]
                                          .productsList[index]
                                          .imageUrl[0],
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: categoryInfo[categoryIndex]
                                              .productsList[index]
                                              .liked ==
                                          false
                                      ? IconButton(
                                          icon: Icon(Icons.favorite_outline),
                                          onPressed: () {
                                            setState(() {
                                              categoryInfo[categoryIndex]
                                                  .productsList[index]
                                                  .liked = true;
                                            });
                                          })
                                      : IconButton(
                                          icon: Icon(
                                            Icons.favorite,
                                            color: Colors.redAccent,
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              categoryInfo[categoryIndex]
                                                  .productsList[index]
                                                  .liked = false;
                                            });
                                          }),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      categoryInfo[categoryIndex]
                                          .productsList[index]
                                          .name,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20)),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    categoryInfo[categoryIndex]
                                        .productsList[index]
                                        .description,
                                    maxLines: 2,
                                    overflow: TextOverflow.clip,
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        categoryInfo[categoryIndex]
                                            .productsList[index]
                                            .price,
                                        style: TextStyle(
                                            color: Colors.deepOrange,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                      categoryInfo[categoryIndex]
                                                  .productsList[index]
                                                  .counter !=
                                              0
                                          ? Container(
                                              height: 25,
                                              width: 25,
                                              decoration: BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Colors.black12,
                                                      blurRadius: 10,
                                                      spreadRadius: 1)
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        100.0),
                                              ),
                                              child: CircleAvatar(
                                                backgroundColor: Colors.white70,
                                                child: Text(
                                                    "${categoryInfo[categoryIndex].productsList[index].counter}"),
                                              ),
                                            )
                                          : Container()
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }

  navigationBack(BuildContext context, ProductModel data) async {
    ProductModel resultBack = await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ProductPage(
                  productModel: data,
                )));
    setState(() {});
  }
}
