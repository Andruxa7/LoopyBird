//
//  PipesView.swift
//  LoopyBird
//
//  Created by Andrii Stetsenko on 11.09.2024.
//

import SwiftUI

struct PipesView: View {
    let topPipeHeight: Double
    let pipeWidth: Double
    let pipeSpacing: Double
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                // Верхняя труба
                Image(.loopyBirdPipe)
                    .resizable()
                    .rotationEffect(.degrees(180))
                    .frame(width: pipeWidth, height: topPipeHeight)
                
                // Пространство между трубами
                Spacer(minLength: pipeSpacing)
                
                // Нижняя труба
                Image(.loopyBirdPipe)
                    .resizable()
                    .frame(
                        width: pipeWidth,
                        height: geometry.size.height - (topPipeHeight + pipeSpacing)
                    )
            }
        }
    }
}

#Preview {
    PipesView(topPipeHeight: 300, pipeWidth: 100, pipeSpacing: 150)
}
