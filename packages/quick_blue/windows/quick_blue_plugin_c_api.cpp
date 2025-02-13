#include "include/quick_blue/quick_blue_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "quick_blue_plugin.h"

void QuickBluePluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  quick_blue::QuickBluePlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
