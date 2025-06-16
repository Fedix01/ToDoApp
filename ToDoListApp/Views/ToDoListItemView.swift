//
//  ToDoListView.swift
//  ToDoListApp
//
//  Created by Federico Manna on 07/06/25.
//

import SwiftUI

struct ToDoListItemView: View {
    let item: ToDoListItem
    @StateObject var viewModel = ProfileViewViewModel()
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(item.title)
                    .font(.title)
                    .bold(true)
                Text("\(Date(timeIntervalSince1970: item.dueDate).formatted(date: .abbreviated, time:.shortened))")
                    .font(.footnote)
                    .foregroundColor(.secondary)
            }
            Spacer()
            
            Button {
                viewModel.toggleIfDone(item:item)
            }label: {
                Image(systemName: item.isDone ? "checkmark.circle.fill": "circle")
            }
            
        }
    }
    
    struct ToDoListItem_Previews: PreviewProvider {
        static var previews: some View {
            ToDoListItemView(item: .init(id: "123", title: "prova", dueDate: Date().timeIntervalSince1970, createdDate: Date().timeIntervalSince1970, isDone: false))
        }
    }
}
