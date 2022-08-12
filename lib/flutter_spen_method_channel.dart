import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_spen_platform_interface.dart';

/// An implementation of [FlutterSpenPlatform] that uses method channels.
class MethodChannelFlutterSpen extends FlutterSpenPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_spen');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
