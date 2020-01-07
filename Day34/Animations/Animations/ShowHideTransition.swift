//
//  ShowHideTransition.swift
//  Animations
//
//  Created by 曹琴 on 2020/1/7.
//  Copyright © 2020 csike. All rights reserved.
//

import SwiftUI

struct ShowHideTransition: View {
    @State private var isShowingRed = false
    
    var body: some View {
        VStack {
            Button("Tap me") {
                withAnimation {
                    self.isShowingRed.toggle()
                }
            }
            
            if isShowingRed {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 200, height: 200)
                    .transition(.asymmetric(insertion: .scale, removal: .slide))
            }
        }
    }
}

struct ShowHideTransition_Previews: PreviewProvider {
    static var previews: some View {
        ShowHideTransition()
    }
}
