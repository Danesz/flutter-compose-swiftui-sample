import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
      
    weak var registrar = self.registrar(forPlugin: "com.danieldallos.nativeview")

    let factory = NativeViewFactory(messenger: registrar!.messenger())
    registrar?.register(factory, withId: "nativeview")
        
      
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
