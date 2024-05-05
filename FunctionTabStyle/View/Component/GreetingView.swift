//
//  GreetingView.swift
//  FunctionTabStyle
//
//  Created by MACBOOK PRO on 18/04/24.
//

import SwiftUI

struct GreetingView: View {
    @State private var usersName: String = ""
    var body: some View {
        VStack(spacing : 28){
            TextField("Enter your name ", text: $usersName)
            Text(createGreeting(for: usersName))
        }
    }
    
    func createGreeting(for name: String)->String{
        let greeting = "Halo, \(name)"
        return greeting
    }
}

#Preview {
    GreetingView()
}
