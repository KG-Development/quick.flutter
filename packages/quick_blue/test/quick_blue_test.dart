import 'package:flutter_test/flutter_test.dart';
import 'package:quick_blue/quick_blue.dart';
import 'package:quick_blue/quick_blue_platform_interface.dart';
import 'package:quick_blue/quick_blue_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockQuickBluePlatform
    with MockPlatformInterfaceMixin
    implements QuickBluePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final QuickBluePlatform initialPlatform = QuickBluePlatform.instance;

  test('$MethodChannelQuickBlue is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelQuickBlue>());
  });

  test('getPlatformVersion', () async {
    QuickBlue quickBluePlugin = QuickBlue();
    MockQuickBluePlatform fakePlatform = MockQuickBluePlatform();
    QuickBluePlatform.instance = fakePlatform;

    expect(await quickBluePlugin.getPlatformVersion(), '42');
  });
}
