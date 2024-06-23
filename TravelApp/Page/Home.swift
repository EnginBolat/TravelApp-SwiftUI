//
//  Home.swift
//  TravelApp
//
//  Created by Engin Bolat on 22.06.2024.
//

import SwiftUI

struct Home: View {
    
    @State private var search: String = ""
    @State private var selectedChip: String = "Location"
    let chips = ["Location", "Hotels", "Food", "Adventure", "Adventure2"]
    
    var body: some View {
        VStack{
            ScrollView{
                Header()
                SearchBar(search: $search).padding(.horizontal,20)
                ChipList(chips: chips,selectedChip: $selectedChip)
                Popular()
                Recommended()
            }
        }
    }
}

#Preview {
    Home()
}

struct Header: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text("Explore")
                Spacer()
                Image(systemName: "location.north.circle.fill")
                    .foregroundColor(.blue)
                Text("Aspen, USA")
                Image(systemName: "chevron.down")
                    .foregroundColor(.black)
            }
            Text("Aspen")
                .font(.largeTitle)
        }
        .padding(.horizontal,20)
    }
}

struct ChipList: View {
    
    let chips : [String]
    @Binding var selectedChip :String
    
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
            HStack{
                ForEach(chips, id: \.self) { chip in
                    Chip(title: chip, isSelected: chip == selectedChip)
                        .onTapGesture {
                            selectedChip = chip
                        }.padding(.trailing,5)
                        .padding(.top,20)
                }
            }.padding(.leading,20)
        }
        
    }
}

struct Popular: View {
    var body: some View {
        VStack{
            HStack{
                Text("Popular")
                    .font(.title2)
                    .fontWeight(.semibold)
                Spacer()
                Text("See All")
                    .foregroundStyle(.blue)
            }
            .padding(20)
            
            ScrollView(.horizontal,showsIndicators: false){
                HStack{
                    ForEach(MockupData.multipleData){ data in
                        NavigationLink(destination: Details(), label: {
                            RectangleCard(data:data)
                        })
                    }
                }.padding(.horizontal,20)
            }
        }
    }
}

struct Recommended: View {
    var body: some View {
        VStack{
            HStack{
                Text("Recommended")
                    .font(.title2)
                    .fontWeight(.semibold)
                Spacer()
                Text("See All")
                    .foregroundStyle(.blue)
            }
            .padding(20)
            
            ScrollView(.horizontal,showsIndicators: false){
                HStack{
                    ForEach(MockupData.multipleData){ data in
                        NavigationLink(destination: Details(), label: {
                            SquareCard(data:data)
                        })
                    }
                }.padding(.horizontal,20)
                    .padding(.bottom,20)
            }
        }
    }
}
