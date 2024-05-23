//
//  ViewModifer.swift
//  SwiftAdvanceTopics
//
//  Created by Shaurya Singh on 21/05/24.
//

import SwiftUI

// View modifier helps in code reusability
// modifier --> applied on existing virew and return an new view
struct DefaultButtonViewModifer: ViewModifier{
    
    let bgColor: Color
    let fgColor: Color

    func body(content: Content) -> some View {
        content
            .font(.title2).fontWeight(.bold)
            .frame(maxWidth: .infinity, minHeight: 50)
            .background(bgColor)
            .foregroundColor(fgColor)
            .cornerRadius(10)
            .shadow(radius: 10)
            .padding(20)
    }
}

extension View{
    func withDefaultButtonFormatting(bgColor: Color = .blue, fgColor: Color = .white) -> some View {
        modifier(DefaultButtonViewModifer(bgColor: bgColor, fgColor: fgColor))
    }
}

struct ViewModiferBootcamp: View {
    var body: some View {
        VStack{
            //without using extension
            Text("Button")
                .modifier(DefaultButtonViewModifer(bgColor: .black, fgColor: .white))
            
            // when used after extension 
            Text("LogIn")
                .withDefaultButtonFormatting(bgColor: .orange, fgColor: .white)
            
            Text("LogOut")
                .withDefaultButtonFormatting()
            
            
        }
    }
}

#Preview {
    ViewModiferBootcamp()
}
