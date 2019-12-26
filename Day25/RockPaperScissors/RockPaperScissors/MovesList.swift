//
//  MovesList.swift
//  RockPaperScissors
//
//  Created by 曹琴 on 2019/12/26.
//  Copyright © 2019 csike. All rights reserved.
//

import SwiftUI

struct MovesList: View {
    let evaluator: (Int) -> Void
    
    var body: some View {
        Group {
            HStack(spacing: 5) {
                Button(action: {
                    self.evaluator(0)
                }){
                    MoveCard(move: "✊🏽", name: "Rock")
                }
                Button(action: {
                    self.evaluator(1)
                }){
                    MoveCard(move: "✋🏽", name:"Paper")
                }
                Button(action: {
                    self.evaluator(2)
                }){
                    MoveCard(move: "✌🏽", name: "Scissors")
                }
            }
        }.padding()
    }
}

struct MovesList_Previews: PreviewProvider {
    static var previews: some View {
        MovesList{ (_) in
            //nothing to do here
        }
    }
}
