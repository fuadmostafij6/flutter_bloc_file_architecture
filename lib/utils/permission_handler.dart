


import 'package:permission_handler/permission_handler.dart';

class PermissionHandler {
  static Future<bool> requestCameraPermission() async {
    var status = await Permission.camera.status;

    if (status.isGranted) {
      return true;
    } else if (status.isDenied) {
      var result = await Permission.camera.request();
      return result.isGranted;
    } else {
      return false;
    }
  }

// Add methods for other permissions as needed (e.g., location, storage, etc.)
}
