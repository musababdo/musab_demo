
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:musab_demo/constants.dart';
import 'package:musab_demo/screens/home.dart';
import 'package:musab_demo/screens/products/add.dart';
import 'package:musab_demo/screens/products/edit.dart';

class DisplayProducts extends StatefulWidget {

  @override
  State<DisplayProducts> createState() => _DisplayProductsState();
}

class _DisplayProductsState extends State<DisplayProducts> {

  Future Display() async{
    var url = Uri.parse('http://10.0.2.2/musab_demo/product_read.php');
    var response = await http.get(url);
    return json.decode(response.body);
  }

  Stream display() async* {
    while (true) {
      await Future.delayed(Duration(seconds: 1));
      yield await Display();
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Display();
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double appBarHeight = AppBar().preferredSize.height;
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    return SafeArea(
      child: WillPopScope(
        onWillPop:(){
          Get.to(Home());
          return Future.value(false);
        },
        child: Scaffold(
          floatingActionButton: new FloatingActionButton(
            onPressed:(){
              Get.to(AddProduct());
            } ,
            child: new Icon(Icons.add,color: Colors.white,),
            backgroundColor: kMainColor,
          ),
          appBar: AppBar(
            backgroundColor: kMainColor,
            centerTitle: true,
            title: Text(
              'Display Products',
              style: TextStyle(color: Colors.white)
            ),
          ),
          body: StreamBuilder(
            stream: display(),
            builder: (context, snapshot) {
              if (snapshot.hasError) print(snapshot.error);
              try {
                if(snapshot.data.length > 0 ){
                  return snapshot.hasData ?
                  ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (context, index) {
                        List list = snapshot.data;
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: screenHeight * .18,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18)
                              ),
                              elevation: 8,
                              child:Padding(
                                padding: const EdgeInsets.all(12),
                                child: Row(
                                  mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                                  children: <Widget>[
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(list[index]['name_ar'],),
                                        Text(list[index]['name_en'],),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Row(
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(right:20),
                                              child: GestureDetector(
                                                onTap: () {
                                                  Navigator.push(context, MaterialPageRoute(builder: (context) => EditProduct(list: list,index: index,),),);
                                                },
                                                child: Icon(
                                                  Icons.edit,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                showDialog(context: context,
                                                    builder: (context){
                                                      return AlertDialog(
                                                        content: Text('Are you sure you want delete ?'),
                                                        actions: <Widget>[
                                                          ElevatedButton(
                                                              onPressed: (){
                                                                Navigator.of(context).pop();
                                                              },
                                                              child: Text("لا")
                                                          ),
                                                          ElevatedButton(
                                                              onPressed: (){
                                                                setState(() {
                                                                  var url = Uri.parse('http://10.0.2.2/musab_demo/product_delete.php');
                                                                  http.post(url,body: {
                                                                    'id' : list[index]['id'],
                                                                  });
                                                                  Navigator.of(context).pop();
                                                                });
                                                              },
                                                              child: Text("نعم")
                                                          ),
                                                        ],
                                                      );
                                                    }
                                                );
                                              },
                                              child: Icon(
                                                Icons.delete,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    //Padding(padding: const EdgeInsets.only(right:15)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      })
                      : new Center(
                    child: new CircularProgressIndicator(),
                  );
                }else{
                  return Container(
                    height: screenHeight -
                        (screenHeight * .08) -
                        appBarHeight -
                        statusBarHeight,
                    child: Center(
                      child: Text('لايوجد',
                        style: TextStyle(
                            fontSize: 30
                        ),
                      ),
                    ),
                  );
                }
              }catch(e){
                return new Center(
                  child: new CircularProgressIndicator(),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
