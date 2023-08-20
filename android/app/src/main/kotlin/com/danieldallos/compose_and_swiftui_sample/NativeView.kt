package com.danieldallos.compose_and_swiftui_sample

import android.content.Context
import android.view.Gravity
import android.view.View
import android.view.ViewGroup
import android.widget.LinearLayout
import androidx.compose.ui.platform.ComposeView
import androidx.compose.ui.platform.ViewCompositionStrategy
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.platform.PlatformView


class NativeView(context: Context, viewId: Int, args: Any?, messenger: BinaryMessenger) : PlatformView {

    private val cv: ComposeView
    private val wrapper: LinearLayout

    init {

        // wrapper view to maintain the correct sizing from native
        wrapper = LinearLayout(context)
        wrapper.id = viewId
        wrapper.layoutParams =  ViewGroup.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT,
            ViewGroup.LayoutParams.MATCH_PARENT)
        wrapper.gravity = Gravity.CENTER_HORIZONTAL

        cv = ComposeView(context)
        // ComposeView requires unique ID if there are multiple ones, so just put it there by default
        // https://developer.android.com/jetpack/compose/migrate/interoperability-apis/compose-in-views#multiple-composeviews
        cv.id = View.generateViewId()

        wrapper.addView(cv)

        // https://developer.android.com/jetpack/compose/migrate/interoperability-apis/compose-in-views#composition-strategy
        cv.setViewCompositionStrategy(ViewCompositionStrategy.DisposeOnViewTreeLifecycleDestroyed)
        cv.setContent {
            MyComposableUI()
        }

    }


    override fun getView(): View? {
        return wrapper
    }

    override fun dispose() {
        //TODO("Not yet implemented")
    }


}
