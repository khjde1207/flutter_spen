import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_spen/flutter_spen.dart';
import 'package:flutter_spen/flutter_spen_platform_interface.dart';
import 'package:flutter_spen/flutter_spen_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterSpenPlatform 
    with MockPlatformInterfaceMixin
    implements FlutterSpenPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterSpenPlatform initialPlatform = FlutterSpenPlatform.instance;

  test('$MethodChannelFlutterSpen is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterSpen>());
  });

  test('getPlatformVersion', () async {
    FlutterSpen flutterSpenPlugin = FlutterSpen();
    MockFlutterSpenPlatform fakePlatform = MockFlutterSpenPlatform();
    FlutterSpenPlatform.instance = fakePlatform;
  
    expect(await flutterSpenPlugin.getPlatformVersion(), '42');
  });
}
