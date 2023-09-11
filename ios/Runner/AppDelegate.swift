import UIKit
import Flutter

extension FlutterError: Error {}

private class DeviceIdentifierDataApiImplementation: DeviceIdentifierDataApi {
  func getDeviceModel() throws -> String {
    return UIKit.UIDevice.current.model
  }
}

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
     let controller = window?.rootViewController as! FlutterViewController
    let api = DeviceIdentifierDataApiImplementation()
    DeviceIdentifierDataApiSetup.setUp(binaryMessenger: controller.binaryMessenger, api: api)

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
