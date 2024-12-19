//
//  RulesView.swift
//  MythicWolfFinder
//
//  Created by Nicolae Chivriga on 18/12/2024.
//

import SwiftUI


struct Rules: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack {
            Image("bg")
                .resizable()
                .ignoresSafeArea()
            
            Image("rules")
                .overlay {
                    Text("""
Search for all the hidden animals in the picture and click on them before the timer runs out. The faster you find them, the higher your score!
Find and tap on the hidden animals in the image. Complete the level quickly to achieve the best score!
Look carefully to find all the hidden animals. Click on them before time runs out to win!
""")
                    .font(.system(size: 15, weight: .semibold, design: .monospaced))
                    .foregroundStyle(.white)
                    .offset(y: 20)
                    .padding(.horizontal, 65)
                }
        }
        .navigationBarBackButtonHidden()
        .navigationBarItems(leading: Image("back")
            .resizable()
            .frame(width: 30, height: 28)
            .onTapGesture {
                dismiss()
            })
    }
}
