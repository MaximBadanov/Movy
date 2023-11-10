//
//  StartScreen.swift
//  swiftui_project
//
//  Created by Максим Баданов on 10.11.2023.
//

import SwiftUI

struct StartScreen: View {
    var body: some View {
        VStack {
            
            HStack(spacing: 8) {
                Image("startScreenIcon1")
                Image("startScreenIcon2")
                Image("startScreenIcon3")
            }
            .padding(.horizontal, 95.5)
            Spacer()
            VStack {
                HStack(spacing: -3) {
                    Text("Movy")
                        .foregroundColor(StartScreenColors.customGray)
                    Text(".")
                        .foregroundColor(StartScreenColors.customRed)
                }
                .font(Font.system(size: 64, weight: .bold))
                .padding(.bottom, 24)
                .padding([.leading, .trailing], 74)
                VStack {
                    Text("Choose your best movie for")
                    Text("tonight quickly.")
                }
                .padding([.leading, .trailing], 10.5)
                .font(Font.system(size: 24, weight: .regular))
                
            }
            Spacer()
            Button("Get Started") {
                //             тут будет экшен перехода
            }
            .font(Font.system(size: 15, weight: .medium))
            .padding(.horizontal, 112)
            .padding(.vertical, 16)
            .foregroundColor(.white)
            .background(StartScreenColors.customRed)
            .cornerRadius(16)
        }
        .padding(.bottom, 40)
    }
}

#Preview {
    StartScreen()
}


