import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class lists extends StatelessWidget {
  final productList;
  final index;
  lists({Key? key, this.productList, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("${productList[index]['Name']}"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))
        ],
      ),
      body: SafeArea(
          child: Container(
            height: size.height,
            width: size.width,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Container(
                        height: size.height / 2.5,
                        width: double.infinity,
                        child:
                        Image.network('${productList[index]['Thumbnail URL']}')),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            child: Text(
                              'USD - ${productList[index]['Price']}',
                              style: TextStyle(fontSize: 24, color: Colors.orange[700]),
                            )),
                        Row(
                          children: [
                            IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
                            IconButton(onPressed: () {}, icon: Icon(Icons.share)),
                          ],
                        )
                      ],
                    ),
                    Container(alignment: Alignment.topLeft,
                      child: Text('${productList[index]['Name']}',
                        style: TextStyle(fontSize: 18,),),
                    ),
                    Container(alignment: Alignment.topLeft,
                      child: Text('⭐⭐⭐⭐⭐ ${productList[index]['Rating Avg']}',
                        style: TextStyle(fontSize: 24),),
                    ),Divider(height: 2,thickness: 1,color: Colors.black54,),
                    SizedBox(height: 20,),
                    Container(alignment: Alignment.topLeft,
                      child: Text('DESCRIPTION :-  ${productList[index]['Description']}',
                        style: TextStyle(fontSize: 24,),),
                    ),Divider(height: 2,thickness: 1,color: Colors.black54,),
                    SizedBox(height: 20,),
                    Container(alignment: Alignment.topLeft,
                      child: Text('CATEGORY:-  ${productList[index]['Category']}',
                        style: TextStyle(fontSize: 24,),),
                    ),Divider(height: 2,thickness: 1,color: Colors.black54,),
                    SizedBox(height: 20,),
                    Container(alignment: Alignment.topLeft,
                      child: Text('BRAND:-  ${productList[index]['Brand']}',
                        style: TextStyle(fontSize: 24,),),
                    ),
                    Divider(height: 2,thickness: 1,color: Colors.black54,),
                    SizedBox(height: 20,),
                    Container(alignment: Alignment.topLeft,
                      child: Text('COLOR:-  ${productList[index]['Color']}',
                        style: TextStyle(fontSize: 24,),),
                    ),Divider(height: 2,thickness: 1,color: Colors.black54,),
                    SizedBox(height: 20,),
                    Container(alignment: Alignment.topLeft,
                      child: Text('Color Family:-  ${productList[index]['Color Family']}',
                        style: TextStyle(fontSize: 24,),),
                    ),
                    Divider(height: 2,thickness: 1,color: Colors.black54,),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}