//
//  GameView.swift
//  MythicWolfFinder
//
//  Created by Nicolae Chivriga on 18/12/2024.
//

import SwiftUI

struct GameView: View {
    @State var showGame: Bool = false
    @State var rotate: Bool = false
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack {
            Image("bg")
                .resizable()
                .ignoresSafeArea()
            Image("circleMoving")
                .rotationEffect(.degrees(rotate ? 2080 : 0))
                .onAppear() {
                    withAnimation(Animation.linear(duration: 6).repeatForever()) {
                        rotate = true
                    }
                }
                .opacity(showGame ? 0 : 1)
            
            WKWebViewRepresentable(url: URL(string: "https://plays.org/game/find-animals/")!, onLoadCompletion: {
                withAnimation {
                    showGame = true
                } completion: {
                    
                }
                
            })
            .ignoresSafeArea()
            .opacity(showGame ? 1 : 0)
        }
        .navigationBarItems(leading: Image("back")
            .resizable()
            .frame(width: 30, height: 28)
            .onTapGesture {
                dismiss()
            })
        .navigationBarBackButtonHidden()
    }
}
