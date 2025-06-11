//
//  RegisterView.swift
//  ToDoListApp
//
//  Created by Federico Manna on 07/06/25.
//

import SwiftUI

struct RegisterView: View {
    @State var name = ""
    @State var email = ""
    @State var password = ""
    
    
    var body: some View {
        
        VStack {
            HeaderView(title: "Register", subtitle: "Start organizing", angle: -17, backgroundColor: .orange)
            
            Form {
                TextField("Full Name", text: $name)
                    .textFieldStyle(DefaultTextFieldStyle())
                TextField("Email", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                SecureField("Password", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                TLButton(title: "Create Account", background: .green, padding: 10) {
                    
                }
            }
            

        }
    }
}

#Preview {
    RegisterView()
}
