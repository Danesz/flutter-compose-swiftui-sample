package com.danieldallos.compose_and_swiftui_sample

import io.flutter.embedding.android.FlutterFragmentActivity
import io.flutter.embedding.engine.FlutterEngine

class MainActivity: FlutterFragmentActivity() {
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        flutterEngine.platformViewsController.registry.registerViewFactory("nativeview", NativeViewFactory(flutterEngine.dartExecutor.binaryMessenger))
    }
}
