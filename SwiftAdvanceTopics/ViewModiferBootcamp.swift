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
    
    let backgroundColor: Color
    let foregroundColor: Color

    func body(content: Content) -> some View {
        content
            .font(.headline)
            .frame(maxWidth: .infinity, minHeight: 40)
            .background(backgroundColor)
            .foregroundColor(foregroundColor)
            .cornerRadius(10)
            .shadow(radius: 10)
            .padding(20)
    }
}

extension View{
    func withDefaultButtonFormatting(backgroundColor: Color = .blue, foregroundColor: Color = .white) -> some View {
        modifier(DefaultButtonViewModifer(backgroundColor: backgroundColor, foregroundColor: foregroundColor))
    }
}

struct ViewModiferBootcamp: View {
    var body: some View {
        VStack{
            Text("LogIn")
                .withDefaultButtonFormatting(backgroundColor: .orange, foregroundColor: .white)
            
            Text("LogOut")
                .withDefaultButtonFormatting()
            
            
        }
    }
}

#Preview {
    ViewModiferBootcamp()
}
