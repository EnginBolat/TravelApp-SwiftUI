//
//  Details.swift
//  TravelApp
//
//  Created by Engin Bolat on 23.06.2024.
//

import SwiftUI

struct Details: View {
    var body: some View {
        VStack{
            ScrollView(showsIndicators: false){
                VStack(alignment:.leading){
                    Image(MockupData.singleData.imageName)
                        .resizable()
                        .frame(height: 400)
                        .cornerRadius(32)
                        .padding(20)
                    
                    VStack(alignment:.leading){
                        HStack{
                            Text(MockupData.singleData.title)
                                .fontWeight(.semibold)
                                .font(.title)
                            
                            Spacer()
                            Text("Show Map")
                                .fontWeight(.regular)
                                .italic()
                                .foregroundStyle(Color.blue)
                        }.padding(.top,12)
                        
                        HStack{
                            Text("★ \(MockupData.singleData.rating)/5")
                                .foregroundStyle(.gray)
                            
                            Text("(\(MockupData.singleData.reviewCounter) Reviews)")
                                .foregroundStyle(.gray)
                        }
                    }.padding(.horizontal,20)
                    
                    VStack(alignment:.leading){
                        Text(MockupData.singleData.details)
                            .padding(.top,12)
                            .font(.headline)
                            .fontWeight(.regular)
                        
                        HStack(alignment: .center) {
                            Text("Read More")
                                .fontWeight(.bold)
                                .foregroundColor(.blue)
                                .padding(.bottom, 12)
                            
                            VStack {
                                Image(systemName: "chevron.down")
                                    .fontWeight(.bold)
                                    .foregroundColor(.blue)
                                    .frame(width: 12, height: 8)
                                    .padding(.bottom, 8)
                            }
                        }
                    }.padding(.horizontal,20)
                    
                    VStack(alignment:.leading){
                        Text("Facilities")
                            .font(.title)
                            .fontWeight(.semibold)
                            .padding(.horizontal,20)
                        
                        ScrollView(.horizontal,showsIndicators: false){
                            HStack{
                                FacilitiesBox(title: "Heater", imageName: "wifi")
                                FacilitiesBox(title: "Dinner", imageName: "fork.knife")
                                FacilitiesBox(title: "Tub", imageName: "bathtub")
                                FacilitiesBox(title: "Pool", imageName: "figure.pool.swim")
                            }.padding(.horizontal,20)
                                .padding(.bottom,20)
                        }
                    }
                }
            }
            
            HStack{
                VStack(alignment: .leading){
                    Text("Price")
                    Text("$199")
                        .foregroundStyle(.green)
                        .font(.title)
                        .fontWeight(.bold)
                }
                Spacer()
                PrimaryButton(title: "Book Now ->", onPress: {})
                    .frame(width: 250)
            }.padding(.horizontal,20)
            
        }
    }
}

#Preview {
    Details()
}

