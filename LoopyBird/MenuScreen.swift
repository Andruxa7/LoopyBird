//
//  MenuScreen.swift
//  LoopyBird
//
//  Created by Andrii Stetsenko on 11.09.2024.
//

import SwiftUI


// Сложность игры
enum GameDifficulti {
    case easy, medium, hard
}

struct MenuScreen: View {
    
    @Environment(\.dismiss) var dismiss
    
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
                        Text("Change Level")
                            .font(.system(size: 40, weight: .bold, design: .rounded))
                            .foregroundStyle(.white)
                            .kerning(2.5)
                        
                        Spacer()
                        
                        NavigationLink {
                            GameView(gameDiff: .easy)
                                .navigationBarBackButtonHidden()
                        } label: {
                            Text("Easy")
                                .font(.system(size: 30, weight: .heavy, design: .rounded))
                                .foregroundStyle(.yellow)
                                .kerning(1.5)
                        }
                        .padding(.vertical)
                        
                        NavigationLink {
                            GameView(gameDiff: .medium)
                                .navigationBarBackButtonHidden()
                        } label: {
                            Text("Medium")
                                .font(.system(size: 30, weight: .heavy, design: .rounded))
                                .foregroundStyle(.orange)
                                .kerning(1.5)
                        }
                        .padding(.vertical)
                        
                        NavigationLink {
                            GameView(gameDiff: .hard)
                                .navigationBarBackButtonHidden()
                        } label: {
                            Text("Hard")
                                .font(.system(size: 30, weight: .heavy, design: .rounded))
                                .foregroundStyle(.red)
                                .kerning(1.5)
                        }
                        .padding(.vertical)
                        
                        Spacer()
                        
                        // back
                        Button {
                            dismiss()
                        } label: {
                            Text("Back to start screen")
                                .font(.system(size: 15, weight: .semibold, design: .rounded))
                                .foregroundStyle(Color(.white))
                        }
                        .padding(.vertical)
                        
                        Spacer()
                    }
                }
            }
        }
    }
}

#Preview {
    MenuScreen()
}
