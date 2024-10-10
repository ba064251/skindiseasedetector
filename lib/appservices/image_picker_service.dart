import 'dart:io';

import 'package:image_picker/image_picker.dart';

class ImagePickerService{


  static Future pickImageCamera()async{
    XFile? pickImage = await ImagePicker().pickImage(source: ImageSource.camera);
    if(pickImage != null){
      File convertedFile = File(pickImage.path);
      return convertedFile;
    } else{
      return null;
    }
  }

  static Future pickImageGallery()async{
    XFile? pickImage = await ImagePicker().pickImage(source: ImageSource.gallery);
    if(pickImage != null){
      File convertedFile = File(pickImage.path);
      return convertedFile;
    } else{
      return null;
    }
  }


}