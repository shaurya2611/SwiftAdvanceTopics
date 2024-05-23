//
//  ButtonStyleBootcamp.swift
//  SwiftAdvanceTopics
//
//  Created by Shaurya Singh on 23/05/24.
//

import SwiftUI

// cerating custom buttonstyle : i.e. how button behave its has been clicked

struct PressedButtonStyle: ButtonStyle{
    
    let opacity: CGFloat
    let scaleEffect: CGFloat
    
    init(opacity: CGFloat, scaleEffect: CGFloat) {
        self.opacity = opacity
        self.scaleEffect = scaleEffect
    }
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? scaleEffect : 1 )
            .opacity(configuration.isPressed ? opacity : 1)

    }
}

// Using concepts of extension ot make code more clearner
extension View{
    func withPressedButtonStyle(opacity: CGFloat, scaleEffect: CGFloat) -> some View{
        buttonStyle(PressedButtonStyle(opacity: opacity, scaleEffect: scaleEffect))
    }
}

struct ButtonStyleBootcamp: View {
        
    var body: some View {
        Button(action: {
            
        }, label: {
            Text("Click Me")
                .withDefaultButtonFormatting(bgColor: .mint ,fgColor: .white)
        }).withPressedButtonStyle(opacity: 0.6, scaleEffect: 0.6)
    }
}

#Preview {
    ButtonStyleBootcamp()
}
