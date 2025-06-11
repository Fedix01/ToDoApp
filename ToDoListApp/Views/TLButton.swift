//
//  TLButton.swift
//  ToDoListApp
//
//  Created by Federico Manna on 11/06/25.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let background: Color
    let padding: Double
    let action:() -> Void
    
    
    var body: some View {
        Button{
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 8)
                    .foregroundColor(background)
                
                Text(title)
                    .foregroundColor(.white)
                    .bold()
            }
        }
        .padding(padding)
    }
}

#Preview {
    TLButton(title: "Log In", background: .blue, padding: 10){
        
    }
}
