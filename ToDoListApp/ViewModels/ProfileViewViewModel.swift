//
//  ProfileViewViewModel.swift
//  ToDoListApp
//
//  Created by Federico Manna on 07/06/25.
//
import FirebaseAuth
import FirebaseFirestore
import Foundation

class ProfileViewViewModel:ObservableObject {
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
