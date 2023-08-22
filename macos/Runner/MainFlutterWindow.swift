import Cocoa
import FlutterMacOS

class MainFlutterWindow: NSWindow {
  override func awakeFromNib() {
    let flutterViewController = FlutterViewController()

    let windowFrame = self.frame
    self.contentViewController = flutterViewController
    self.setFrame(windowFrame, display: true)

    RegisterGeneratedPlugins(registry: flutterViewController)
      
    let registrar = flutterViewController.registrar(forPlugin: "com.danieldallos.nativeview")
    let factory = NativeViewFactory(messenger: registrar.messenger)
       
    registrar.register(factory, withId: "nativeview")
       

    super.awakeFromNib()
  }
}
