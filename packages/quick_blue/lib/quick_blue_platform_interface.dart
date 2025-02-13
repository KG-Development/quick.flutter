import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'quick_blue_method_channel.dart';

abstract class QuickBluePlatform extends PlatformInterface {
  /// Constructs a QuickBluePlatform.
  QuickBluePlatform() : super(token: _token);

  static final Object _token = Object();

  static QuickBluePlatform _instance = MethodChannelQuickBlue();

  /// The default instance of [QuickBluePlatform] to use.
  ///
  /// Defaults to [MethodChannelQuickBlue].
  static QuickBluePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [QuickBluePlatform] when
  /// they register themselves.
  static set instance(QuickBluePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
