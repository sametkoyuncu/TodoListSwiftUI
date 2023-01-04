//
//  ListView.swift
//  TodoListSwiftUI
//
//  Created by Samet Koyuncu on 31.12.2022.
//

import SwiftUI

struct ListView: View {
    @State var items: [String] = [
        "This is the first title.",
        "This is the second!.",
        "Third title.",
        "This is the fourth title.",
    ]
    
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
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


