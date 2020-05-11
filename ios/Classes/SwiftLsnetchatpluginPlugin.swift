import Flutter
import UIKit


public class SwiftLsnetchatpluginPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "lsnetchatplugin", binaryMessenger: registrar.messenger())
    let instance = SwiftLsnetchatpluginPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
    
    NIMSDKManager()
    
    print("Bundle.main.bundleIdentifier is \(Bundle.main.bundleIdentifier)")
    
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
