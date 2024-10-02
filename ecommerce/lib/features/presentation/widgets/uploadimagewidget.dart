import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Uploadimagewidget extends StatefulWidget {
	final Function onImageselected;
  const Uploadimagewidget({super.key, required this.onImageselected});

  @override
  _Uploadimagewidget createState() => _Uploadimagewidget();
}

class _Uploadimagewidget extends State<Uploadimagewidget> {

  final ImagePicker _picker = ImagePicker();
  String? _imagepath;

  Future<void> _pickImage() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _imagepath = image.path;
				widget.onImageselected(image.path);
      });
    }
  }

  Widget buildcontent() {
    if (_imagepath == null) {
      return const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.insert_photo_outlined),
          Text('Upload Image'),
        ],
      );
    } else {
      return ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.file(
          File(_imagepath!),
          fit: BoxFit.cover,
          width: 366,
          height: 190,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: GestureDetector(
        onTap: _pickImage,
        child: Container(
          width: 366,
          height: 190,
          decoration: BoxDecoration(
            color: const Color(0xFFF3F3F3),
            borderRadius: BorderRadius.circular(16),
          ),
          child: buildcontent(),
        ),
      ),
    );
  }
}
