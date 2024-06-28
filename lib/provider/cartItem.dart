import 'package:musab_demo/models/product_model.dart';
import 'package:flutter/cupertino.dart';

class CartItem extends ChangeNotifier{

  List<ProductModel> products=[];
  int? qua;
  String? image,mimage,mname,mprice;
  int? img_id;
  addProduct(ProductModel product,int qu){
    products.add(product);
    qua=qu;
    notifyListeners();
  }
  addProductwithImage(ProductModel product,int qu,String img,int myid){
    products.add(product);
    qua=qu;
    image=img;
    img_id=myid;
    notifyListeners();
  }

  addNew(String name,String price,int qu,String img,int myid){
    mname = name;
    mprice = price;
    qua=qu;
    image=img;
    img_id=myid;
    notifyListeners();
  }

  deleteProduct(ProductModel product) {
    products.remove(product);
    notifyListeners();
  }

  deleteAll(){
    products.clear();
    notifyListeners();
  }

}