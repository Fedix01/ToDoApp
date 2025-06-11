//
//  LoginViewViewModel.swift
//  ToDoListApp
//
//  Created by Federico Manna on 07/06/25.
//

import Foundation

class LoginViewViewModel:ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    
    init() {

    }
    func login() {
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty, !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            return
        }
    }
    
    func validate()
    {
        
    }
}
