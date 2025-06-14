//
//  NewItemView.swift
//  ToDoListApp
//
//  Created by Federico Manna on 07/06/25.
//

import SwiftUI

struct NewItemView: View {
    @StateObject var viewModel = NewItemViewViewModel()
    @Binding var newItemPresented: Bool
    
    var body: some View {
        VStack {
            Text("New Item")
                .font(.system(size: 30))
                .bold()
                .padding(.top, 100)
            
            Form {
                TextField("Title", text: $viewModel.title)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                DatePicker("Due Date", selection: $viewModel.dueDate)
                    .datePickerStyle(GraphicalDatePickerStyle())
                
                TLButton(title:"Save", background: .pink, padding: 10) {
                  if viewModel.canSave{
                  viewModel.save()
                  newItemPresented = false
                 }     else {
                 viewModel.showAlert = true
                 }
               }

                }
                .padding(10)
            }
        .alert(isPresented: $viewModel.showAlert) {
            Alert(title: Text("Error"), message: Text("All fields are required"), dismissButton: .default(Text("OK")))
        }
        }
    }


#Preview {
    NewItemView(newItemPresented: Binding(get: {
        return true
    }, set: { _ in}))

}
