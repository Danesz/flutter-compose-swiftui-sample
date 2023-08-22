//
//  MySwiftUI.swift
//  Runner
//
//  Created by Daniel on 22/08/2023.
//

import Foundation
import SwiftUI

struct MySwiftUI : View {
    var body : some View {
        Text("Hello, SwiftUI!")
            .padding(8)
            .font(.system(size: 22))
            .multilineTextAlignment(.center)
            .overlay(
                        RoundedRectangle(cornerRadius: 26)
                            .stroke(Color.purple, lineWidth: 2)
                    )
    }
}
