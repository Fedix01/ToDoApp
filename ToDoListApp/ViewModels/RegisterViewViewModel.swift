//
//  RegisterViewViewModel.swift
//  ToDoListApp
//
//  Created by Federico Manna on 07/06/25.
//
import FirebaseFirestore
import FirebaseAuth
import Foundation

class RegisterViewViewModel:ObservableObject {
    @Published var name = ""
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    
    init() {
        
    }
    
    func register(){
        guard validate( ) else {
            return
        }
            Auth.auth().createUser(withEmail: email, password: password) { [weak self] result, error in
                guard let userId = result?.user.uid else {
                    return
                }
                
                self?.insertUserRecord(id: userId)
            }
        
    }
    
    private func insertUserRecord(id:String) {
        let newUser = User(id: id, name: name, email: email, joined: Date().timeIntervalSince1970)
        
        let db = Firestore.firestore( )
        
        db.collection("users")
            .document(id)
            .setData(newUser.asDictionary())
    }
    
    func validate() -> Bool {
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty, !password.trimmingCharacters(in: .whitespaces).isEmpty, !name.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Please fill all fields"
            print(errorMessage)

            return false
        }
        
        guard email.contains( "@" ) && email.contains( "." ) else {
            errorMessage = "Please email correct"
            return false
        }
      return true
    }
}
