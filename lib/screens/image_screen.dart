
import 'package:code_land/utils/constants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageScreen extends StatefulWidget {
  const ImageScreen({super.key});

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  Uint8List? data;

  Future<Uint8List?> galleryImagePicker() async {
    ImagePicker picker = ImagePicker();

    XFile? file = await picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 90,
    );

    if (file != null) {
      return await file.readAsBytes(); // convert into Uint8List.
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          UPLOAD_IMAGE_TEXT,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontFamily: POP_FAMILY,
              fontSize: 16),
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
              flex: 4,
              child: Container(
                margin: const EdgeInsets.only(
                    top: 20, bottom: 20, left: 20, right: 20),
                child:
                    data != null ? Image.memory(data!) : Image.asset(NO_IMAGES),
              )),
          Expanded(
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: const EdgeInsets.only(
                    top: 20, bottom: 20, left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    GestureDetector(
                        onTap: () async {
                          data = await galleryImagePicker();
                          setState(() {});
                        },
                        child: Image.asset(UPLOAD_IMAGE, width: 119)),
                    GestureDetector(
                        onTap: () {
                          setState(() {});
                        },
                        child: Image.asset(VIEW_IMAGE, width: 119)),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
