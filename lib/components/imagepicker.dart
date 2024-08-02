// ignore_for_file: prefer_const_constructors

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerTemplate extends StatefulWidget {
  const ImagePickerTemplate({Key? key}) : super(key: key);

  @override
  State<ImagePickerTemplate> createState() => _ImagePickerTemplateState();
}

class _ImagePickerTemplateState extends State<ImagePickerTemplate> {
  final ImagePicker _picker = ImagePicker();
  XFile? _image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Image Picker',
        ),
      ),
      body: Center(
        child: _image == null
            ? const Text(
                'No image selected.',
              )
            : Image.file(File(_image!.path)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getImage,
        tooltip: 'Pick Image',
        child: const Icon(Icons.add_a_photo),
      ),
    );
  }

  Future getImage() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image;
    });
  }
}
