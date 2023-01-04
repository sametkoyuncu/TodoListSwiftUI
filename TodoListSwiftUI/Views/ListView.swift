//
//  ListView.swift
//  TodoListSwiftUI
//
//  Created by Samet Koyuncu on 31.12.2022.
//

import SwiftUI

struct ListView: View {
    @State var items: [ItemModel] = [
        .init(title: "Title is the first one", isCompleted: false),
        .init(title: "Second item", isCompleted: true),
        .init(title: "This is the third", isCompleted: false),
        .init(title: "Fourth", isCompleted: false)
    ]
    
    var body: some View {
        List {
            ForEach(items, id: \.self.id) { item in
                ListRowView(item: item)
            }
        }
        .listStyle(.plain)
        .navigationTitle("Todos 🧸")
        .navigationBarItems(leading: EditButton(), trailing: NavigationLink(destination: {
            AddView()
        }, label: {
            Text("Add")
        }))
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
    }
}


