//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by 안홍은 on 2022/07/08.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}

