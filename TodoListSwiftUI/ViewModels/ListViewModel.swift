//
//  ListViewModel.swift
//  TodoListSwiftUI
//
//  Created by fmss on 5.01.2023.
//

import Foundation

class ListViewModel: ObservableObject {
    @Published var items: [ItemModel] = []
    
    init() {
        getItems()
    }
    
    func getItems() {
        let newItems: [ItemModel] = [
            .init(title: "Title is the first one", isCompleted: false),
            .init(title: "Second item", isCompleted: true),
            .init(title: "This is the third", isCompleted: false),
            .init(title: "Fourth", isCompleted: false)
        ]
        items.append(contentsOf: newItems)
    }
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
}
