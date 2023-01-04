//
//  ItemModel.swift
//  TodoListSwiftUI
//
//  Created by Samet Koyuncu on 4.01.2023.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
