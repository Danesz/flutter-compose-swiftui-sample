//
//  NativeViewFactory.swift
//  Runner
//
//  Created by Daniel on 22/08/2023.
//


import Foundation
import FlutterMacOS
import Cocoa
import SwiftUI

class NativeViewFactory: NSObject, FlutterPlatformViewFactory {
    private var messenger: FlutterBinaryMessenger

    init(messenger: FlutterBinaryMessenger) {
        self.messenger = messenger
        super.init()
    }
    
    func create(withViewIdentifier viewId: Int64, arguments args: Any?) -> NSView {
        return NSHostingView(rootView: MySwiftUI())
    }
}

