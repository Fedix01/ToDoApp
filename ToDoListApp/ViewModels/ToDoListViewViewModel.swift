//
//  ToDoListViewViewModel.swift
//  ToDoListApp
//
//  Created by Federico Manna on 07/06/25.
//

import Foundation

//view model for list item view
class ToDoListViewViewModel:ObservableObject {
    @Published var showingNewItemView = false
    init() {
        
    }
}
