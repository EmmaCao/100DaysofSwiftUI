//
//  MoveCard.swift
//  RockPaperScissors
//
//  Created by 曹琴 on 2019/12/26.
//  Copyright © 2019 csike. All rights reserved.
//

import SwiftUI

struct MoveCard: View {
    let move: String
    let name: String
    
    var body: some View {
        VStack(spacing: 20) {
            Text(move)
                .font(.largeTitle)
            Text(name.uppercased())
                .font(.caption)
                .fontWeight(.light)
                .foregroundColor(.secondary)
        }
        .padding()
        .frame(minWidth: 0, maxWidth: .infinity)
        .background(Color.init(.secondarySystemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 5))
        .padding()
        .shadow(radius: 5)
    }
}

struct MoveCard_Previews: PreviewProvider {
    static var previews: some View {
        MoveCard(move: "✊🏽", name: "Rock")
    }
}
