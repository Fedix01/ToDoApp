//
//  ToDoListView.swift
//  ToDoListApp
//
//  Created by Federico Manna on 07/06/25.
//

import Firebase
import FirebaseFirestoreSwift
import SwiftUI

struct ToDoListView: View {
    @StateObject private var viewModel = ToDoListViewViewModel()
    let userId: String
    
    @FirestoreQuery var items: [ToDoListItem]
    
    init(userId: String) {
        self.userId = userId
        self._items = FirestoreQuery(collectionPath: "users/\(userId)/todos")
        
    }

    
    var body: some View {
        NavigationView {
            VStack {
                
            }
            .navigationTitle(Text("To Do List"))
            .toolbar {
                Button {
                    viewModel.showingNewItemView = true
                } label: {
                    Image(systemName: "plus")
                }
                .sheet(isPresented: $viewModel.showingNewItemView){
                    NewItemView(newItemPresented: $viewModel.showingNewItemView)
                }
            }
        }
    }
}

#Preview {
    ToDoListView(userId: "")
}
