//
//  AddNumberView.swift
//  FunctionTabStyle
//
//  Created by MACBOOK PRO on 18/04/24.
//

import SwiftUI

struct AddNumberView: View {
    @State private var number1 : String = ""
    @State private var number2 : String = ""
    //@State private var results : Double = 0
    @State private var results : String = ""
    
    var body: some View {
        VStack{
            TextField("Insert First Number", text: $number1)
                .keyboardType(.numberPad)
            TextField("Insert Second Number", text: $number2)
                .keyboardType(.numberPad)
            
            Text("Results = \(results)")
            
            Button{
                resultaddition()
            }
            label :{
                Text("add")
            }
        }
        .textFieldStyle(.roundedBorder)
        .padding()
    }
    
    //Mark: - ADDITION
    private func add(from firsNumber: Double, to secondNumber: Double)->Double{
        return firsNumber + secondNumber
    }
    
    //Mark: - ACTION BUTTON
    private func resultaddition (){
        if let num1 = Double(number1), let num2 = Double(number2){
            let temp = add(from: num1, to: num2)
            
            results = String(format:"%.2f",temp)
        }
        else {
            results = "Invalid Input"
        }
    }
    
}

#Preview {
    AddNumberView()
}
