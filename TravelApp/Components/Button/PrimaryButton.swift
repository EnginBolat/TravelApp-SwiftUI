//
//  PrimaryButton.swift
//  TravelApp
//
//  Created by Engin Bolat on 22.06.2024.
//

import SwiftUI

struct PrimaryButton: View {
    
    let title:String
    let onPress: () -> Void
    
    var body: some View {
        
        Button(action: onPress, label: {
            Text(title)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .padding(8)
        })
        .buttonStyle(.borderedProminent)
    }
}

#Preview {
    PrimaryButton(title: "Explore",onPress: {})
}
