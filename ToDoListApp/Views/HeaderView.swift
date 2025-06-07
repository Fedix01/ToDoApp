//
//  HeaderView.swift
//  ToDoListApp
//
//  Created by Federico Manna on 07/06/25.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack {
           RoundedRectangle(cornerRadius: 0)
                .foregroundColor(Color.pink)
                .rotationEffect(Angle(degrees: 15))
               
            
            VStack() {
                Text("To Do List")
                    .font(.system(size: 50))
                    .foregroundColor(.white)
                    .bold()
                
                    Text("Get things done :)")
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                
            }
            .padding(.top, 30)
       }
        .frame(width: UIScreen.main.bounds.width * 3, height: 300)
        .offset(x: 0, y: -100)
       
       Spacer()
    }
}

#Preview {
    HeaderView()
}
