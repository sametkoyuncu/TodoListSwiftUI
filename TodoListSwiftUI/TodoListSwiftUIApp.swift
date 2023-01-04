//
//  TodoListSwiftUIApp.swift
//  TodoListSwiftUI
//
//  Created by Samet Koyuncu on 31.12.2022.
//

import SwiftUI
/*
 MVVM Arch,
 Model - data point
 View - UI
 ViewModel - manages Models for V iews
 */

@main
struct TodoListSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            ListView()
        }
    }
}
