//
//  RegisterView.swift
//  ToDoListApp
//
//  Created by Federico Manna on 07/06/25.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var registerModel = RegisterViewViewModel()
    
    
    var body: some View {
        
        VStack {
            HeaderView(title: "Register", subtitle: "Start organizing", angle: -17, backgroundColor: .orange)
            
            if !registerModel.errorMessage.isEmpty {
                Text(registerModel.errorMessage)
                    .foregroundColor(.red)
            }
            Form {
                TextField("Full Name", text: $registerModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                TextField("Email", text: $registerModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                SecureField("Password", text: $registerModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                TLButton(title: "Create Account", background: .green, padding: 10) {
                registerModel.register()
                }
            }
            

        }
    }
}

#Preview {
    RegisterView()
}
