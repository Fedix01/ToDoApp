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
                
            }
            .navigationTitle(Text("Profile"))
        }
    }
}

#Preview {
    ProfileView()
}
