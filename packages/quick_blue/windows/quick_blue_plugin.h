#ifndef FLUTTER_PLUGIN_QUICK_BLUE_PLUGIN_H_
#define FLUTTER_PLUGIN_QUICK_BLUE_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace quick_blue {

class QuickBluePlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  QuickBluePlugin();

  virtual ~QuickBluePlugin();

  // Disallow copy and assign.
  QuickBluePlugin(const QuickBluePlugin&) = delete;
  QuickBluePlugin& operator=(const QuickBluePlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace quick_blue

#endif  // FLUTTER_PLUGIN_QUICK_BLUE_PLUGIN_H_
