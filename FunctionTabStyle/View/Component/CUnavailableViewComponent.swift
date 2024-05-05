//
//  CUnavailableViewComponent.swift
//  FunctionTabStyle
//
//  Created by MACBOOK PRO on 18/04/24.
//

import SwiftUI

struct CUnavailableViewComponent: View {
    var body: some View {
        //        ContentUnavailableView("Connection Issue", systemImage: "wifi.slash", description: Text("Check Your Internet Connection"))
        
        ContentUnavailableView {
            /*@START_MENU_TOKEN@*/Label("No Mail", systemImage: "tray.fill")/*@END_MENU_TOKEN@*/
        } description :{
            Text("Check Your Inbox")
        }
        actions : {
            Button{
                
            }
            label :{
                Text("Refresh")
            }
            .buttonStyle(.borderedProminent)
        }
        
        
    }
}

#Preview {
    CUnavailableViewComponent()
}
