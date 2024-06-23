//
//  SquareCard.swift
//  TravelApp
//
//  Created by Engin Bolat on 23.06.2024.
//

import SwiftUI

struct SquareCard: View {
    
    let data: TravelModel
    
    var body: some View {
        VStack(alignment:.leading){
            Image(data.imageName)
                .resizable()
                .frame(width: 250,height: 200)
                .cornerRadius(18)
            
            HStack{
                Text(data.title)
                    .foregroundStyle(Color.black.opacity(0.7))
                    .font(.title3)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Text("★ \(data.rating)/5")
                    .foregroundStyle(Color.black.opacity(0.3))
            }.padding(.horizontal,4)
        }.padding(12)
            .background(Color.blueAccent.opacity(0.3))
            .cornerRadius(16)
    }
}


#Preview {
    SquareCard(data: MockupData.singleData)
}
