//
//  RecordPlayerApp.swift
//  RecordPlayer
//
//  Created by Can Kanbur on 3.04.2023.
//

import SwiftUI

@main
struct RecordPlayerApp: App {
    @State var rotateRecord : Bool = false
    @State var rotateArm : Bool = false
    @State var shouldAnimate : Bool = false
    @State var degrees : Double = 0.0
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
