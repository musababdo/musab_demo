
import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:musab_demo/constants.dart';
import 'package:musab_demo/screens/products/display.dart';

class AddProduct extends StatefulWidget {

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {

  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  final ImagePicker picker = ImagePicker();
  List<File> imageList = [];
  File? _image;
  XFile? image;
  void openGallery()async{
    //image = await picker.pickImage(source: ImageSource.camera);
    List<XFile> images = await picker.pickMultiImage();
    //final File file_gallery = File(image!.path);
    setState(() {
      //_image=file_gallery;
      imageList.addAll(images.map((xfile) => File(xfile.path)));
    });
  }

  TextEditingController name_ar = new TextEditingController();
  TextEditingController name_en = new TextEditingController();

  Future save() async{
    final uri = Uri.parse('http://10.0.2.2/musab_demo/product_add.php');
    List<String> base64Images = [];
    for (File imageFile in imageList) {
      List<int> imageBytes = await imageFile.readAsBytesSync();
      String base64Image = base64Encode(imageBytes);
      base64Images.add(base64Image);
    }
    String jsonImages = jsonEncode(base64Images);
    final response = await http.post(
      uri,
      body: {
        'images' : jsonImages,
        'images' : jsonImages,
        'images' : jsonImages,
        'images' : jsonImages,
      },
    );

    if (response.statusCode == 200) {
      print('Images saved successfully');
    } else {
      print('Failed to save images');
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Form(
      key: _globalKey,
      child: SafeArea(
        child: WillPopScope(
          onWillPop:(){
            Get.to(DisplayProducts());
            return Future.value(false);
          },
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: kMainColor,
              centerTitle: true,
              title: Text(
                'Add',
              ),
            ),
              persistentFooterButtons: <Widget>[
                Builder(
                  builder: (context) => ElevatedButton(
                    onPressed: () {
                      if (_globalKey.currentState!.validate()){
                        _globalKey.currentState!.save();
                        try{
                          save();
                          Fluttertoast.showToast(
                              msg: "Add Successfully",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.black,
                              textColor: Colors.white,
                              fontSize: 16.0
                          );
                          Get.to(DisplayProducts());
                        }on PlatformException catch(e){

                        }
                      }else{

                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: kMainColor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20,bottom: 5,top: 5),
                      child: Center(
                          child:Text(
                            "Add",
                          )
                      ),
                    ),
                  ),
                ),
              ],
            body: Padding(
              padding: const EdgeInsets.only(left: 15,right: 15,bottom: 8,top: 8),
              child: Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: height * .1,
                    ),
                    TextFormField(
                      controller: name_ar,
                      decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.blue),
                          hintText: "Name"
                      ),
                    ),
                    SizedBox(height: 15,),
                    TextFormField(
                      controller: name_en,
                      decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.blue),
                          hintText: "اللون الخارجي بالانجليزي"
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 15,right: 15,bottom: 8,top: 8),
                      child: Builder(
                        builder: (context) => ElevatedButton(
                          onPressed: () {
                            openGallery();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: kMainColor,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20,bottom: 5,top: 5),
                            child: Center(
                                child:Text(
                                  "Pick Image",
                                  style: TextStyle(color: Colors.white)
                                )
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Expanded(
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3),
                        itemCount: imageList.length,
                        itemBuilder: (BuildContext context, int index){
                          return Padding(
                            padding: EdgeInsets.all(2),
                            child: Stack(
                              fit: StackFit.expand,
                              children: [
                                Image.file(
                                  imageList[index],
                                  fit: BoxFit.cover,
                                ),
                                Positioned(
                                  right: -4,
                                  top: -4,
                                  child: Container(
                                      color: Colors.white,
                                      child: IconButton(
                                        onPressed: (){
                                          setState(() {
                                            imageList.removeAt(index);
                                          });
                                        },
                                        icon: Icon(Icons.delete),
                                        color: Colors.black,
                                      )
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
