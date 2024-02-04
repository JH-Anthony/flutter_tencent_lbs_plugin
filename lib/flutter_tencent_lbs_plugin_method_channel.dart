import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_tencent_lbs_plugin_platform_interface.dart';

/// An implementation of [FlutterTencentLbsPluginPlatform] that uses method channels.
class MethodChannelFlutterTencentLbsPlugin extends FlutterTencentLbsPluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_tencent_lbs_plugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
