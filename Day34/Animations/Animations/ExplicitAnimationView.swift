//
//  ExplicitAnimationView.swift
//  Animations
//
//  Created by 曹琴 on 2020/1/7.
//  Copyright © 2020 csike. All rights reserved.
//

import SwiftUI

struct ExplicitAnimationView: View {
    @State private var animationAmount = 0.0
    
    var body: some View {
        Button("Tap me") {
            withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)) {
                self.animationAmount += 360
            }
        }
        .padding(50)
        .background(Color.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .rotation3DEffect(.degrees(animationAmount), axis: (x: 0, y: 1, z: 0))
    }
}

struct ExplicitAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        ExplicitAnimationView()
    }
}
