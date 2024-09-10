//
//  StartScreen.swift
//  LoopyBird
//
//  Created by Andrii Stetsenko on 11.09.2024.
//

import SwiftUI

struct StartScreen: View {
    var body: some View {
        GeometryReader { geometry in
            NavigationStack {
                ZStack {
                    Image(.loopyBirdBackground)
                        .resizable()
                        .scaleEffect(
                            CGSize(
                                width: geometry.size.width * 0.003,
                                height: geometry.size.height * 0.006
                            )
                        )
                    
                    VStack {
                        Spacer()
                        Text("Loopy Bird")
                            .font(.system(size: 45, weight: .heavy, design: .rounded))
                            .foregroundStyle(.yellow)
                            .kerning(2.5)
                        
                        Spacer()
                        
                        NavigationLink {
                            MenuScreen()
                                .navigationBarBackButtonHidden()
                        } label: {
                            Text("Play")
                                .font(.system(size: 38, weight: .heavy, design: .rounded))
                                .foregroundStyle(.white)
                        }
                        .padding(.vertical, 10)
                        
                        NavigationLink {
                            // go to shop
                            Text("ShopView")
                        } label: {
                            Text("Shop")
                                .font(.system(size: 30, weight: .heavy, design: .rounded))
                                .foregroundStyle(.white)
                        }
                        .padding(.vertical, 10)
                        
                        NavigationLink {
                            // go to bonus
                            Text("BonusView")
                        } label: {
                            Text("Bonus")
                                .font(.system(size: 30, weight: .heavy, design: .rounded))
                                .foregroundStyle(.white)
                        }
                        .padding(.vertical, 10)
                        
                        Spacer()
                    }
                }
            }
        }
    }
}

#Preview {
    StartScreen()
}
