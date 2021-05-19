//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Katerina Utlik on 4/7/21.
//

import SwiftUI

@main // Note: Means entry point
struct AppetizersApp: App {
    var order = Order()

    var body: some Scene {
        WindowGroup {
            AppetizerTabView()
                .environmentObject(order)
        }
    }
}
