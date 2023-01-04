//
//  ListRowView.swift
//  TodoListSwiftUI
//
//  Created by Samet Koyuncu on 31.12.2022.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle.fill" : "checkmark.circle")
                .foregroundColor(item.isCompleted ? .green : .gray)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView(item: ItemModel(title: "This is the first title.", isCompleted: false))
            .previewLayout(.sizeThatFits)
    }
}
