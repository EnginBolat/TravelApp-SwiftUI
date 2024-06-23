//
//  RectangleCard.swift
//  TravelApp
//
//  Created by Engin Bolat on 23.06.2024.
//

import SwiftUI

struct RectangleCard: View {
    
    let data: TravelModel
    
    var body: some View {
        VStack(alignment:.leading){
            Image(data.imageName)
                .resizable()
                .frame(width: 250,height: 300)
                .cornerRadius(32)
            
            HStack{
                Text(data.title)
                    .foregroundStyle(Color.black.opacity(0.7))
                    .font(.title3)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Text("★ \(data.rating)/5")
                    .foregroundStyle(Color.black.opacity(0.3))
            }.padding(.horizontal,4)
        }.padding(.trailing,12)
    }
}

#Preview {
    RectangleCard(data: MockupData.singleData)
}
