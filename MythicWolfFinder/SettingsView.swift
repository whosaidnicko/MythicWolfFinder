//
//  SettingsView.swift
//  MythicWolfFinder
//
//  Created by Nicolae Chivriga on 19/12/2024.
//

import SwiftUI
import StoreKit

struct SettingsView: View {
    @Environment(\.dismiss) var dismiss
    @Environment(\.requestReview) var review
    var body: some View {
        ZStack {
            Image("bg")
                .resizable()
                .ignoresSafeArea()
            Button {
                review()
            } label: {
                Image("lemn")
                    .overlay {
                        Text("RATE US")
                            .font(.system(size: 40, weight: .bold, design: .monospaced))
                            .foregroundStyle(.white)
                    }
            }

         
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
