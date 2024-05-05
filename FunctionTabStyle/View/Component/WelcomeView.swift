//
//  WelcomeView.swift
//  FunctionTabStyle
//
//  Created by MACBOOK PRO on 18/04/24.
//

import SwiftUI
//penulisan function di bawah body atau diatas body
//method ketika function dalam file yang sama
struct WelcomeView: View {
    var body: some View {
        Text(welcomeMessage())
            .font(.system(.title, design: .serif))
    }
    func welcomeMessage()-> String{
        "Welcome to my Code"
    }
}

#Preview {
    WelcomeView()
}
