import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() => runApp(MaterialApp(
      home: AksesKamera(),
      debugShowCheckedModeBanner: false,
    ));

class AksesKamera extends StatefulWidget {
  @override
  _AksesKameraState createState() => _AksesKameraState();
}

class _AksesKameraState extends State<AksesKamera> {
  File image;

  //akses kamera
  aksesCamera() async {
    print('Picker is Called');
    File img = await ImagePicker.pickImage(source: ImageSource.camera);
    if (img != null) {
      image = img;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Akes Kamera'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          child: image == null ? Text('No Image To Show') : Image.file(image),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(Icons.add_a_photo),
        onPressed: aksesCamera,
      ),
    );
  }
}
