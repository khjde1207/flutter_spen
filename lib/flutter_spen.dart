
import 'flutter_spen_platform_interface.dart';

class FlutterSpen {
  Future<String?> getPlatformVersion() {
    return FlutterSpenPlatform.instance.getPlatformVersion();
  }
}
