//
//  LogoView.swift
//  swiftui_project
//
//  Created by Максим Баданов on 14.11.2023.
//
import SwiftUI


struct LogoView: View {
    var body: some View {
        VStack {
            HStack() {
                Text(StartScreenConstants.StartScreenAppName.movy)
                    .foregroundColor(StartScreenConstants.StartScreenColors.customGray)
                Text(StartScreenConstants.StartScreenAppName.dot)
                    .foregroundColor(StartScreenConstants.StartScreenColors.customRed)
            }
            .font(Font.system(size: UIConstants.size64.rawValue, weight: .bold))
            .padding(.bottom, UIConstants.size24.rawValue)
            VStack {
                Text(StartScreenConstants.StartScreenDescription.firstRow)
                Text(StartScreenConstants.StartScreenDescription.secondRow)
            }
            .padding([.leading, .trailing], UIConstants.size16.rawValue)
            .font(Font.system(size: UIConstants.size24.rawValue, weight: .regular))
        }
    }
}

#Preview {
    LogoView()
}
