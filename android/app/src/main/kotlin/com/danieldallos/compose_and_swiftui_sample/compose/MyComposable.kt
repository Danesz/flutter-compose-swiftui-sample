package com.danieldallos.compose_and_swiftui_sample

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp

@Composable
internal fun MyComposableUI() {
    Text(
        text = "Hi Compose!",
        modifier = Modifier
            .background(
                color = Color.Cyan,
                shape = RoundedCornerShape(size = 26.dp)
            )
            .padding(all = 8.dp), // add inner padding
        fontSize = 22.sp,
        textAlign = TextAlign.Center

    )
}
