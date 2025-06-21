//
//  ToDoListItemViewViewModel.swift
//  ToDoListApp
//
//  Created by Federico Manna on 07/06/25.
//

import Foundation
import FirebaseFirestore
import FirebaseAuth

//view model for single to do list item view(each row)
class ToDoListItemViewViewModel:ObservableObject {
    init() {
        
    }
    
    func toggleIfDone(item:ToDoListItem) {
        var newItem = item
        newItem.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(item.id)
            .setData(newItem.asDictionary())
    }
}
