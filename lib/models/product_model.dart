class ProductModel{

  String? id;
  String? name;
  var image = [];
  String? img;
  double? price;
  double? discount;
  var thesize = [];
  var thecolor = [];
  String? size;
  String? color;
  String? info;
  int quantity =0;

  ProductModel(this.id,this.name,this.image,this.price,this.discount,this.thesize,this.thecolor,this.info,this.quantity);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    //data['id'] = this.id;
    data['name'] = this.name;
    data['image'] = this.image;
    data['quantity'] = this.quantity;
    data['size'] = this.size;
    data['color'] = this.color;
    return data;
  }

  ProductModel.fromJson(Map<String, dynamic> json) {
    //this.id       = json['id'];
    this.name     = json['name'];
    this.image    = json['image'];
    this.quantity = json['quantity'];
    this.size  = json['size'];
    this.color = json['color'];
  }
}