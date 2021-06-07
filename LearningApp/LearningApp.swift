//
//  LearningAppApp.swift
//  LearningApp
//
//  Created by karanpreet singh sarao on 07/06/21.
//

import SwiftUI

@main
struct LearningApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(ContentModel())
        }
    }
}
