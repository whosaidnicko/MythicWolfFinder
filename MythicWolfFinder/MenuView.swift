//
//  MenuView.swift
//  MythicWolfFinder
//
//  Created by Nicolae Chivriga on 18/12/2024.
//

import SwiftUI


struct MenuView: View {
    var body: some View {
        ZStack {
            Image("bg")
                .resizable()
                .ignoresSafeArea()
            
            HStack {
                Image("logotip")
                    .resizable()
                    .scaledToFit()
                Spacer()
                
                VStack {
                    NavigationLink {
                        GameView()
                    } label: {
                        Image("lemn")
                            .resizable()
                            .scaledToFit()
                            .overlay {
                                Text("PLAY")
                                    .font(.system(size: 40, weight: .bold, design: .monospaced))
                                    .foregroundStyle(.white)
                            }
                    }

                 
                    
                    HStack(spacing: 36) {
                        NavigationLink {
                            GameView()
                        } label: {
                            Image("circleDrevni")
                                .resizable()
                                .scaledToFit()
                                .overlay {
                                    Image("play")
                                }
                        }

                      
                        
                        NavigationLink {
                            Rules()
                        } label: {
                            Image("circleDrevni")
                                .resizable()
                                .scaledToFit()
                                .overlay {
                                    Image("i")
                                }
                        }

                      
                    }
                      
                    NavigationLink(destination: SettingsView()) {
                        Image("lemn")
                            .resizable()
                            .scaledToFit()
                            .overlay {
                                Text("Settings")
                                    .font(.system(size: 40, weight: .bold, design: .monospaced))
                                    .foregroundStyle(.white)
                            }
                    }
                 
                    Spacer()
                }
            }
            .padding(.trailing)
        }
        .navigationBarBackButtonHidden()
    }
}
