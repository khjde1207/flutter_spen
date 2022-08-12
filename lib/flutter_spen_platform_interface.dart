import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_spen_method_channel.dart';

abstract class FlutterSpenPlatform extends PlatformInterface {
  /// Constructs a FlutterSpenPlatform.
  FlutterSpenPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterSpenPlatform _instance = MethodChannelFlutterSpen();

  /// The default instance of [FlutterSpenPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterSpen].
  static FlutterSpenPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterSpenPlatform] when
  /// they register themselves.
  static set instance(FlutterSpenPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
