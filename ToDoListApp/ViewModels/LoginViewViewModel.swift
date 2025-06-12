//
//  LoginViewViewModel.swift
//  ToDoListApp
//
//  Created by Federico Manna on 07/06/25.
//
import FirebaseAuth
import Foundation

class LoginViewViewModel:ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var errorMessage = ""
    
    init() {

    }
    func login() {
   guard validate() else { return }
        Auth.auth().signIn(withEmail: email, password: password)
            
        
    }
    
    func validate() -> Bool
    {
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty, !password.trimmingCharacters(in: .whitespaces).isEmpty else {
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
