//
//  ProfileView.swift
//  ToDoListApp
//
//  Created by Federico Manna on 07/06/25.
//

import SwiftUI

struct ProfileView: View {
    @StateObject private var viewModel = ProfileViewViewModel()
    var body: some View {
        NavigationView {
            VStack {
                if let user = viewModel.user {
                    profile(user:user)
                    
                }else {
                    Text("Loading...")
                }
            }
            .navigationTitle(Text("Profile"))
        }
        .onAppear {
            viewModel.fetchUser()
        }
    }
    
    @ViewBuilder
    func profile(user:User) -> some View {
        Image(systemName: "person.circle")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .foregroundColor(Color.blue)
            .frame(width: 125, height: 125)
            .padding(10)
        
        VStack(alignment: .leading)
        {
            HStack {
                Text("Name: ")
                    .bold()
                Text(user.name)
            }.padding(10)
            
            HStack {
                Text("Email: ")
                    .bold()
                
                Text(user.email)
            }.padding(10)
            HStack {
                Text("Member since: ")
                    .bold()
                
                Text("\(Date(timeIntervalSince1970: user.joined).formatted(date:.abbreviated, time:.shortened))")
            } .padding(10)
            
            Button("Log Out") {
                viewModel.logout()
            }.tint(Color.red)
                .padding(.top)
            
        }
    }
}
    
    
    
    struct ProfileView_Previews:PreviewProvider {
        static var previews: some View {
            ProfileView()
        }
    }
