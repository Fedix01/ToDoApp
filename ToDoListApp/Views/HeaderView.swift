//
//  HeaderView.swift
//  ToDoListApp
//
//  Created by Federico Manna on 07/06/25.
//

import SwiftUI

struct HeaderView: View {
    
    let title: String
    let subtitle: String
    let angle: Double
    let backgroundColor: Color
    
    var body: some View {
        ZStack {
           RoundedRectangle(cornerRadius: 0)
                .foregroundColor(backgroundColor)
                .rotationEffect(Angle(degrees: angle))
               
            
            VStack() {
                Text(title)
                    .font(.system(size: 50))
                    .foregroundColor(.white)
                    .bold()
                
                    Text(subtitle)
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                
            }
            .padding(.top, 80)
       }
  
        .frame(width: UIScreen.main.bounds.width * 3, height: 350)
        .offset(x: 0, y: -150)
       
       Spacer()
    }
}

#Preview {
    HeaderView(title: "To Do List", subtitle: "Get things done :)", angle: -17, backgroundColor: .pink)
}
