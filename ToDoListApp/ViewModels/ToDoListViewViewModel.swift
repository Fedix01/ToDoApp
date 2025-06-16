//
//  ToDoListViewViewModel.swift
//  ToDoListApp
//
//  Created by Federico Manna on 07/06/25.
//
import FirebaseFirestore
import Foundation

//view model for list item view
class ToDoListViewViewModel:ObservableObject {
    @Published var showingNewItemView = false
    
    private let userId:String
    
    init(userId:String) {
        self.userId = userId
    }
    
    func delete(id:String) {
        let db = Firestore.firestore( )
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
            
    }
}
