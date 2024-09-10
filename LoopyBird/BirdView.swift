//
//  BirdView.swift
//  LoopyBird
//
//  Created by Andrii Stetsenko on 11.09.2024.
//

import SwiftUI

struct BirdView: View {
    let birdSize: Double
    
    var body: some View {
        Image(.loopyBird)
            .resizable()
            .scaledToFit()
            .frame(width: birdSize, height: birdSize)
    }
}

#Preview {
    BirdView(birdSize: 70)
}
