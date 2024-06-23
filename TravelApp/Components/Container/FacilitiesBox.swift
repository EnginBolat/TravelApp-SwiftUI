//
//  FacilitiesBox.swift
//  TravelApp
//
//  Created by Engin Bolat on 23.06.2024.
//

import SwiftUI


struct FacilitiesBox: View {
    
    let title: String
    let imageName: String
    
    var body: some View {
        VStack{
            VStack{
                Image(systemName: imageName)
                  .resizable()
                   .scaledToFit()
                   .foregroundColor(.gray)

                Spacer().frame(height: 12)
                Text(title)
                   .foregroundColor(.gray)
            }
            .frame(width: 80,height:60)
            .padding(20)
        }.background(Color.blueAccent.opacity(0.3))
            .cornerRadius(24)
    }
}



#Preview {
    FacilitiesBox(title: "Wifi", imageName: "wifi")
}
