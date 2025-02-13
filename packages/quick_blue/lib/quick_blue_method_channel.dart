import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'quick_blue_platform_interface.dart';

/// An implementation of [QuickBluePlatform] that uses method channels.
class MethodChannelQuickBlue extends QuickBluePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('quick_blue');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
