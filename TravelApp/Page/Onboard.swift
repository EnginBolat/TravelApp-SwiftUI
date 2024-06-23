//
//  ContentView.swift
//  TravelApp
//
//  Created by Engin Bolat on 22.06.2024.
//

import SwiftUI

struct Onboard: View {
    var body: some View {
        NavigationView{
            ZStack {
                Image("onboard-screen-background")
                    .resizable()
                    .frame(width: .infinity, height: .infinity)
                    .ignoresSafeArea()
                VStack{
                    Spacer()
                    VStack(alignment: .leading) {
                        HStack {
                            Text("Plan Your")
                                .font(.largeTitle)
                                .foregroundColor(.white)
                            Spacer()
                        }
                        .frame(maxWidth: .infinity)
                        
                        HStack {
                            Text("Luxurious Vacation")
                                .font(.largeTitle)
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                            Spacer()
                        }
                        .frame(maxWidth: .infinity)
                        
                    }
                    .padding(.bottom, 12)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    NavigationLink(destination: TabPage().navigationBarBackButtonHidden(true), label: {
                        Text("Explore")
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                            .padding(8)
                    }).buttonStyle(.borderedProminent)
                        
                    
                }.padding(20)
            }
        }
    }
}

#Preview {
    Onboard()
}
