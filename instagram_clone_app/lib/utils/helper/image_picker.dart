import 'package:image_picker/image_picker.dart';

class CImagePicker {
  static ImagePicker _imagePicker = ImagePicker();

  selectImage(ImageSource source) async {
    XFile? file = await _imagePicker.pickImage(source: source);

    if (file == null) {
      print("Image not picked");
    }
  }
}
