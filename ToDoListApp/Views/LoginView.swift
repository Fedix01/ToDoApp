//
//  LoginView.swift
//  ToDoListApp
//
//  Created by Federico Manna on 07/06/25.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var loginModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            
            
            VStack {
                HeaderView(title: "To Do List", subtitle: "Get things done :)", angle: 17, backgroundColor: .pink)
                
                if !loginModel.errorMessage.isEmpty {
                    Text(loginModel.errorMessage)
                        .foregroundColor(.red)
                }
                Form {
                    TextField("Email Address", text: $loginModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                    
                    TextField("Password", text: $loginModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(title: "Log In", background: .blue, padding: 10) {
                        loginModel.login()
                    }
                    }
                VStack {
                    Text("Register")
                    NavigationLink("Create an account", destination: RegisterView())
                }
                .padding(.bottom, 50)
            }
        }
    }
}

#Preview {
    LoginView()
}
