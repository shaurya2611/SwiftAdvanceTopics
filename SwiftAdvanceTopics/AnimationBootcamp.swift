//
//  AnyTransitionBootcamp.swift
//  SwiftAdvanceTopics
//
//  Created by Shaurya Singh on 23/05/24.
//

import SwiftUI

struct AnimationBootcamp: View {
    
    @State var showRectangle = true
    
    var body: some View {
        VStack{
            
            Spacer()
        
                Circle()
                .fill(showRectangle ? linearGradient(.yellow, .orange) : linearGradient(.red, .orange))
                    .cornerRadius(showRectangle ? 10 : 300)
                    
                    .frame(width: showRectangle ? 300 : 200,
                           height: showRectangle ? 300 : 200)
                    .rotationEffect(Angle(degrees: showRectangle ? 0 : 30))
                    .offset(y:showRectangle ? 0 : 200)
                    
            
            Spacer()
            
            
            Text(showRectangle ? "Click to SUNSET" : "Click to SUNRISE")
                .defaultHoverEffect(.lift)
                .withDefaultButtonFormatting()
                .padding(.horizontal, 30)
                .onTapGesture {
                    withAnimation(.snappy(extraBounce: 0.5)) {
                        showRectangle.toggle()
                    }
                }
        }
    }
}


func linearGradient(_ topColor: Color, _ bottomColor: Color) -> LinearGradient{
    LinearGradient(
        gradient: Gradient(colors: [topColor, bottomColor]),
        startPoint: .top,
        endPoint: .bottom
    )
}

#Preview {
    AnimationBootcamp()
}
