//
//  NativeView.swift
//  Runner
//
//  Created by Daniel on 22/08/2023.
//

import Foundation
import Flutter
import UIKit
import SwiftUI

class NativeView: NSObject, FlutterPlatformView {
    
    private var _view: UIView

    init(
        frame: CGRect,
        viewIdentifier viewId: Int64,
        arguments args: Any?,
        binaryMessenger messenger: FlutterBinaryMessenger?
    ) {
        _view = UIView()
        _view.frame = frame

        super.init()
        
        // iOS views can be created here
        createNativeView(view: _view)
         
    }
    

    func view() -> UIView {
        return _view
    }
    
    func createNativeView(view _view: UIView){
        _view.backgroundColor = UIColor.yellow


        // Attaching the SwiftUI view to a UIHostingController to manage SwiftUI lifecycle
        // https://developer.apple.com/documentation/swiftui/uihostingcontroller
        let swiftUIViewController = UIHostingController(rootView: MySwiftUI())

        swiftUIViewController.view.translatesAutoresizingMaskIntoConstraints = false
        swiftUIViewController.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]

        swiftUIViewController.view.frame = _view.bounds
        
        // Based on the doc this call is required to maintain a proper ViewController lifecycle, however it works without it too
        // It is possible that for some more advanced use-cases this has to be called, however for a basic UI rendering, it seems we are ok without it.
        // Also, findig a root ViewController in a more advanced application could be tricky.
        // Btw, on MacOS NSHostingView is available to overcome this depedency...
        
        
        //UIApplication.shared.keyWindow?.rootViewController?.addChild(swiftUIViewController)

        _view.addSubview(swiftUIViewController.view)
        
        // Based on the doc this is required to maintain a proper ViewController (VC) lifecycle, however it works without it too
        // It seems calling this method makes sense, if the `didMove` method of the VC is overridden (and has some necessary logic)
        
        //swiftUIViewController.didMove(toParent: UIApplication.shared.keyWindow?.rootViewController!)

    }
    
}
